select map,time_text,WT_SY,WT_ML,WT_SC,WT_TL,WT_EXP,WT_OTHER,WT_TJ,ml+sy+sc+tl total,sy,ml,sc,tl,exp from (select map,REPLACE(WT_ML*60/time,'.', '_')/1 ml,REPLACE(WT_SY*60/time,'.', '_')/1 sy,REPLACE(WT_SC*60/time,'.', '_')/1 sc,REPLACE(WT_TL*60/time,'.', '_')/1 tl,REPLACE(WT_EXP*60/time,'.', '_')/1 exp,WT_TJ,time_text,WT_ML,WT_SY,WT_SC,WT_TL,WT_OTHER,WT_EXP,WT_TJ from wt_detail)