
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int int32 ;


 int EG_STEP ;
 scalar_t__ TL2EG (int) ;
 int dB2 (double) ;
 scalar_t__**** tllTable ;

__attribute__((used)) static void makeTllTable(void) {


 static double kltable[16] = {
  ((0.000) * 2), ((9.000) * 2), ((12.000) * 2), ((13.875) * 2), ((15.000) * 2), ((16.125) * 2), ((16.875) * 2), ((17.625) * 2),
  ((18.000) * 2), ((18.750) * 2), ((19.125) * 2), ((19.500) * 2), ((19.875) * 2), ((20.250) * 2), ((20.625) * 2), ((21.000) * 2)
 };

 int32 tmp;
 int32 fnum, block, TL, KL;

 for (fnum = 0; fnum < 16; fnum++)
  for (block = 0; block < 8; block++)
   for (TL = 0; TL < 64; TL++)
    for (KL = 0; KL < 4; KL++) {
     if (KL == 0) {
      tllTable[fnum][block][TL][KL] = TL2EG(TL);
     } else {
      tmp = (int32)(kltable[fnum] - ((3.000) * 2) * (7 - block));
      if (tmp <= 0)
       tllTable[fnum][block][TL][KL] = TL2EG(TL);
      else
       tllTable[fnum][block][TL][KL] = (uint32)((tmp >> (3 - KL)) / EG_STEP) + TL2EG(TL);
     }
    }
}
