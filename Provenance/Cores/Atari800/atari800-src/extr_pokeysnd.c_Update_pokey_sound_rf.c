
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UWORD ;
typedef int ULONG ;
typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ nDigitized; } ;


 int ANTIC_CPU_CLOCK ;
 int BIENIAS_FIX ;
 int* Div_n_cnt ;
 int* Div_n_max ;
 int* Outvol ;
 size_t POKEYSND_SAMPBUF_MAX ;
 int POKEYSND_samp_freq ;
 int* POKEYSND_sampbuf_AUDV ;
 int* POKEYSND_sampbuf_cnt ;
 int POKEYSND_sampbuf_last ;
 int POKEYSND_sampbuf_lastval ;
 size_t POKEYSND_sampbuf_ptr ;
 size_t POKEYSND_sampbuf_rptr ;
 int * POKEYSND_sampbuf_val ;
 scalar_t__ POKEYSND_stereo_enabled ;
 int* POKEY_AUDC ;
 int* POKEY_AUDCTL ;
 int* POKEY_AUDF ;
 int* POKEY_Base_mult ;
 int POKEY_CH1_179 ;
 int POKEY_CH1_CH2 ;
 int POKEY_CH1_FILTER ;
 int POKEY_CH2_FILTER ;
 int POKEY_CH3_179 ;
 int POKEY_CH3_CH4 ;
 int POKEY_CHAN1 ;
 int POKEY_CHAN2 ;
 int POKEY_CHAN3 ;
 int POKEY_CHAN4 ;
 int POKEY_VOLUME_MASK ;
 int POKEY_VOL_ONLY ;
 int Samp_n_max ;
 TYPE_1__ g_Sound ;
 int* pokeysnd_AUDV ;
 int* sampbuf_cnt2 ;
 int sampbuf_last2 ;
 int sampbuf_lastval2 ;
 size_t sampbuf_ptr2 ;
 size_t sampbuf_rptr2 ;
 int * sampbuf_val2 ;

__attribute__((used)) static void Update_pokey_sound_rf(UWORD addr, UBYTE val, UBYTE chip,
      UBYTE gain)
{
 ULONG new_val = 0;
 UBYTE chan;
 UBYTE chan_mask;
 UBYTE chip_offs;


 chip_offs = chip << 2;


 switch (addr & 0x0f) {
 case 131:

  chan_mask = 1 << POKEY_CHAN1;
  if (POKEY_AUDCTL[chip] & POKEY_CH1_CH2)
   chan_mask |= 1 << POKEY_CHAN2;
  break;
 case 136:

  pokeysnd_AUDV[POKEY_CHAN1 + chip_offs] = (val & POKEY_VOLUME_MASK) * gain;
  chan_mask = 1 << POKEY_CHAN1;
  break;
 case 130:

  chan_mask = 1 << POKEY_CHAN2;
  break;
 case 135:

  pokeysnd_AUDV[POKEY_CHAN2 + chip_offs] = (val & POKEY_VOLUME_MASK) * gain;
  chan_mask = 1 << POKEY_CHAN2;
  break;
 case 129:

  chan_mask = 1 << POKEY_CHAN3;
  if (POKEY_AUDCTL[chip] & POKEY_CH3_CH4)
   chan_mask |= 1 << POKEY_CHAN4;
  break;
 case 134:

  pokeysnd_AUDV[POKEY_CHAN3 + chip_offs] = (val & POKEY_VOLUME_MASK) * gain;
  chan_mask = 1 << POKEY_CHAN3;
  break;
 case 128:

  chan_mask = 1 << POKEY_CHAN4;
  break;
 case 133:

  pokeysnd_AUDV[POKEY_CHAN4 + chip_offs] = (val & POKEY_VOLUME_MASK) * gain;
  chan_mask = 1 << POKEY_CHAN4;
  break;
 case 132:

  chan_mask = 15;
  break;
 default:
  chan_mask = 0;
  break;
 }
 if (chan_mask & (1 << POKEY_CHAN1)) {

  if (POKEY_AUDCTL[chip] & POKEY_CH1_179)
   new_val = POKEY_AUDF[POKEY_CHAN1 + chip_offs] + 4;
  else
   new_val = (POKEY_AUDF[POKEY_CHAN1 + chip_offs] + 1) * POKEY_Base_mult[chip];

  if (new_val != Div_n_max[POKEY_CHAN1 + chip_offs]) {
   Div_n_max[POKEY_CHAN1 + chip_offs] = new_val;

   if (Div_n_cnt[POKEY_CHAN1 + chip_offs] > new_val) {
    Div_n_cnt[POKEY_CHAN1 + chip_offs] = new_val;
   }
  }
 }

 if (chan_mask & (1 << POKEY_CHAN2)) {

  if (POKEY_AUDCTL[chip] & POKEY_CH1_CH2) {
   if (POKEY_AUDCTL[chip] & POKEY_CH1_179)
    new_val = POKEY_AUDF[POKEY_CHAN2 + chip_offs] * 256 +
     POKEY_AUDF[POKEY_CHAN1 + chip_offs] + 7;
   else
    new_val = (POKEY_AUDF[POKEY_CHAN2 + chip_offs] * 256 +
         POKEY_AUDF[POKEY_CHAN1 + chip_offs] + 1) * POKEY_Base_mult[chip];
  }
  else
   new_val = (POKEY_AUDF[POKEY_CHAN2 + chip_offs] + 1) * POKEY_Base_mult[chip];

  if (new_val != Div_n_max[POKEY_CHAN2 + chip_offs]) {
   Div_n_max[POKEY_CHAN2 + chip_offs] = new_val;

   if (Div_n_cnt[POKEY_CHAN2 + chip_offs] > new_val) {
    Div_n_cnt[POKEY_CHAN2 + chip_offs] = new_val;
   }
  }
 }

 if (chan_mask & (1 << POKEY_CHAN3)) {

  if (POKEY_AUDCTL[chip] & POKEY_CH3_179)
   new_val = POKEY_AUDF[POKEY_CHAN3 + chip_offs] + 4;
  else
   new_val = (POKEY_AUDF[POKEY_CHAN3 + chip_offs] + 1) * POKEY_Base_mult[chip];

  if (new_val != Div_n_max[POKEY_CHAN3 + chip_offs]) {
   Div_n_max[POKEY_CHAN3 + chip_offs] = new_val;

   if (Div_n_cnt[POKEY_CHAN3 + chip_offs] > new_val) {
    Div_n_cnt[POKEY_CHAN3 + chip_offs] = new_val;
   }
  }
 }

 if (chan_mask & (1 << POKEY_CHAN4)) {

  if (POKEY_AUDCTL[chip] & POKEY_CH3_CH4) {
   if (POKEY_AUDCTL[chip] & POKEY_CH3_179)
    new_val = POKEY_AUDF[POKEY_CHAN4 + chip_offs] * 256 +
     POKEY_AUDF[POKEY_CHAN3 + chip_offs] + 7;
   else
    new_val = (POKEY_AUDF[POKEY_CHAN4 + chip_offs] * 256 +
         POKEY_AUDF[POKEY_CHAN3 + chip_offs] + 1) * POKEY_Base_mult[chip];
  }
  else
   new_val = (POKEY_AUDF[POKEY_CHAN4 + chip_offs] + 1) * POKEY_Base_mult[chip];

  if (new_val != Div_n_max[POKEY_CHAN4 + chip_offs]) {
   Div_n_max[POKEY_CHAN4 + chip_offs] = new_val;

   if (Div_n_cnt[POKEY_CHAN4 + chip_offs] > new_val) {
    Div_n_cnt[POKEY_CHAN4 + chip_offs] = new_val;
   }
  }
 }


 for (chan = POKEY_CHAN1; chan <= POKEY_CHAN4; chan++) {
  if (chan_mask & (1 << chan)) {
   if ( (POKEY_AUDC[chan + chip_offs] & POKEY_VOL_ONLY) ||
    ((POKEY_AUDC[chan + chip_offs] & POKEY_VOLUME_MASK) == 0)
    || (!BIENIAS_FIX && (Div_n_max[chan + chip_offs] < (Samp_n_max >> 8)))
    ) {

    Outvol[chan + chip_offs] = 1;


    if ((chan == POKEY_CHAN3 && !(POKEY_AUDCTL[chip] & POKEY_CH1_FILTER)) ||
     (chan == POKEY_CHAN4 && !(POKEY_AUDCTL[chip] & POKEY_CH2_FILTER)) ||
     (chan == POKEY_CHAN1) ||
     (chan == POKEY_CHAN2)
     || (!BIENIAS_FIX && (Div_n_max[chan + chip_offs] < (Samp_n_max >> 8)))
    ) {

     Div_n_max[chan + chip_offs] = 0x7fffffffL;
     Div_n_cnt[chan + chip_offs] = 0x7fffffffL;
    }
   }
  }
 }


}
