
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_LINE_C ;
 int* POKEY_AUDCTL ;
 int* POKEY_AUDF ;
 int* POKEY_Base_mult ;
 int POKEY_CH1_179 ;
 int POKEY_CH1_CH2 ;
 int POKEY_CH3_179 ;
 int POKEY_CH3_CH4 ;
 int POKEY_CHAN1 ;
 int POKEY_CHAN2 ;
 size_t POKEY_CHAN3 ;
 int POKEY_CHAN4 ;
 int* POKEY_DivNMax ;

__attribute__((used)) static void Update_Counter(int chan_mask)
{
 if (chan_mask & (1 << POKEY_CHAN1)) {

  if (POKEY_AUDCTL[0] & POKEY_CH1_179)
   POKEY_DivNMax[POKEY_CHAN1] = POKEY_AUDF[POKEY_CHAN1] + 4;
  else
   POKEY_DivNMax[POKEY_CHAN1] = (POKEY_AUDF[POKEY_CHAN1] + 1) * POKEY_Base_mult[0];
  if (POKEY_DivNMax[POKEY_CHAN1] < ANTIC_LINE_C)
   POKEY_DivNMax[POKEY_CHAN1] = ANTIC_LINE_C;
 }

 if (chan_mask & (1 << POKEY_CHAN2)) {

  if (POKEY_AUDCTL[0] & POKEY_CH1_CH2) {
   if (POKEY_AUDCTL[0] & POKEY_CH1_179)
    POKEY_DivNMax[POKEY_CHAN2] = POKEY_AUDF[POKEY_CHAN2] * 256 + POKEY_AUDF[POKEY_CHAN1] + 7;
   else
    POKEY_DivNMax[POKEY_CHAN2] = (POKEY_AUDF[POKEY_CHAN2] * 256 + POKEY_AUDF[POKEY_CHAN1] + 1) * POKEY_Base_mult[0];
  }
  else
   POKEY_DivNMax[POKEY_CHAN2] = (POKEY_AUDF[POKEY_CHAN2] + 1) * POKEY_Base_mult[0];
  if (POKEY_DivNMax[POKEY_CHAN2] < ANTIC_LINE_C)
   POKEY_DivNMax[POKEY_CHAN2] = ANTIC_LINE_C;
 }

 if (chan_mask & (1 << POKEY_CHAN4)) {

  if (POKEY_AUDCTL[0] & POKEY_CH3_CH4) {
   if (POKEY_AUDCTL[0] & POKEY_CH3_179)
    POKEY_DivNMax[POKEY_CHAN4] = POKEY_AUDF[POKEY_CHAN4] * 256 + POKEY_AUDF[POKEY_CHAN3] + 7;
   else
    POKEY_DivNMax[POKEY_CHAN4] = (POKEY_AUDF[POKEY_CHAN4] * 256 + POKEY_AUDF[POKEY_CHAN3] + 1) * POKEY_Base_mult[0];
  }
  else
   POKEY_DivNMax[POKEY_CHAN4] = (POKEY_AUDF[POKEY_CHAN4] + 1) * POKEY_Base_mult[0];
  if (POKEY_DivNMax[POKEY_CHAN4] < ANTIC_LINE_C)
   POKEY_DivNMax[POKEY_CHAN4] = ANTIC_LINE_C;
 }
}
