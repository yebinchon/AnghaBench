
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ nDigitized; } ;
typedef int SWORD ;


 void* ANTIC_CPU_CLOCK ;
 size_t* Div_n_cnt ;
 scalar_t__* Div_n_max ;
 int FALSE ;
 int Num_pokeys ;
 int* Outvol ;
 size_t P17 ;
 size_t P4 ;
 size_t P5 ;
 size_t P9 ;
 size_t POKEYSND_SAMPBUF_MAX ;
 int POKEYSND_SAMP_MAX ;
 int POKEYSND_SAMP_MIN ;
 int* POKEYSND_sampbuf_cnt ;
 void* POKEYSND_sampbuf_last ;
 size_t POKEYSND_sampbuf_ptr ;
 size_t POKEYSND_sampbuf_rptr ;
 scalar_t__* POKEYSND_sampbuf_val ;
 scalar_t__ POKEYSND_sampout ;
 scalar_t__ POKEYSND_stereo_enabled ;
 int* POKEY_AUDC ;
 int* POKEY_AUDCTL ;
 int POKEY_CH1_FILTER ;
 int POKEY_CH2_FILTER ;
 int POKEY_CHAN1 ;
 int POKEY_CHAN2 ;
 int POKEY_CHAN3 ;
 int POKEY_CHAN4 ;
 int POKEY_NOTPOLY5 ;
 size_t POKEY_POLY17_SIZE ;
 int POKEY_POLY4 ;
 size_t POKEY_POLY4_SIZE ;
 size_t POKEY_POLY5_SIZE ;
 int POKEY_POLY9 ;
 size_t POKEY_POLY9_SIZE ;
 int POKEY_PURETONE ;
 int POKEY_SAMPLE ;
 int POKEY_VOL_ONLY ;
 size_t* POKEY_poly17_lookup ;
 int* POKEY_poly9_lookup ;
 size_t READ_U32 (int*) ;
 int* Samp_n_cnt ;
 int Samp_n_max ;
 int TRUE ;
 int WRITE_U32 (int*,size_t) ;
 int* bit4 ;
 scalar_t__* bit5 ;
 TYPE_1__ g_Sound ;
 int last_val ;
 int last_val2 ;
 int* pokeysnd_AUDV ;
 int* sampbuf_cnt2 ;
 void* sampbuf_last2 ;
 size_t sampbuf_ptr2 ;
 size_t sampbuf_rptr2 ;
 scalar_t__* sampbuf_val2 ;
 scalar_t__ sampout2 ;
 scalar_t__ speaker ;

__attribute__((used)) static void pokeysnd_process_8(void *sndbuffer, int sndn)
{
 register UBYTE *buffer = (UBYTE *) sndbuffer;
 register int n = sndn;

 register ULONG *div_n_ptr;
 register UBYTE *samp_cnt_w_ptr;
 register ULONG event_min;
 register UBYTE next_event;






 register UBYTE cur_val;




 register UBYTE *out_ptr;
 register UBYTE audc;
 register UBYTE toggle;
 register UBYTE count;
 register UBYTE *vol_ptr;





 samp_cnt_w_ptr = ((UBYTE *) (&Samp_n_cnt[0]) + 1);



 out_ptr = Outvol;
 vol_ptr = pokeysnd_AUDV;




 cur_val = POKEYSND_SAMP_MIN;







 count = Num_pokeys;
 do {
  if (*out_ptr++)
   cur_val += *vol_ptr;
  vol_ptr++;

  if (*out_ptr++)
   cur_val += *vol_ptr;
  vol_ptr++;

  if (*out_ptr++)
   cur_val += *vol_ptr;
  vol_ptr++;

  if (*out_ptr++)
   cur_val += *vol_ptr;
  vol_ptr++;
  count--;
 } while (count);






 while (n) {







  next_event = POKEY_SAMPLE;
  event_min = READ_U32(samp_cnt_w_ptr);

  div_n_ptr = Div_n_cnt;

  count = 0;
  do {

   if (*div_n_ptr <= event_min) {
    event_min = *div_n_ptr;
    next_event = POKEY_CHAN1 + (count << 2);
   }
   div_n_ptr++;
   if (*div_n_ptr <= event_min) {
    event_min = *div_n_ptr;
    next_event = POKEY_CHAN2 + (count << 2);
   }
   div_n_ptr++;
   if (*div_n_ptr <= event_min) {
    event_min = *div_n_ptr;
    next_event = POKEY_CHAN3 + (count << 2);
   }
   div_n_ptr++;
   if (*div_n_ptr <= event_min) {
    event_min = *div_n_ptr;
    next_event = POKEY_CHAN4 + (count << 2);
   }
   div_n_ptr++;

   count++;
  } while (count < Num_pokeys);


  if (next_event != POKEY_SAMPLE) {


   count = Num_pokeys;
   do {


    div_n_ptr--;
    *div_n_ptr -= event_min;
    div_n_ptr--;
    *div_n_ptr -= event_min;
    div_n_ptr--;
    *div_n_ptr -= event_min;
    div_n_ptr--;
    *div_n_ptr -= event_min;

    count--;
   } while (count);


   WRITE_U32(samp_cnt_w_ptr, READ_U32(samp_cnt_w_ptr) - event_min);






   P4 = (P4 + event_min) % POKEY_POLY4_SIZE;
   P5 = (P5 + event_min) % POKEY_POLY5_SIZE;
   P9 = (P9 + event_min) % POKEY_POLY9_SIZE;
   P17 = (P17 + event_min) % POKEY_POLY17_SIZE;


   Div_n_cnt[next_event] += Div_n_max[next_event];


   audc = POKEY_AUDC[next_event];


   out_ptr = &Outvol[next_event];


   toggle = FALSE;






   if (!(audc & POKEY_VOL_ONLY)) {


    if ((audc & POKEY_NOTPOLY5) || bit5[P5]) {

     if (audc & POKEY_PURETONE) {

      toggle = TRUE;
     }

     else if (audc & POKEY_POLY4) {

      toggle = (bit4[P4] == !(*out_ptr));
     }
     else {

      if (POKEY_AUDCTL[next_event >> 2] & POKEY_POLY9) {

       toggle = ((POKEY_poly9_lookup[P9] & 1) == !(*out_ptr));
      }
      else {

       toggle = (((POKEY_poly17_lookup[P17 >> 3] >> (P17 & 7)) & 1) == !(*out_ptr));
      }
     }
    }
   }


   if ( POKEY_AUDCTL[next_event >> 2] & POKEY_CH1_FILTER) {

    if ((next_event & 0x03) == POKEY_CHAN3) {

     if (Outvol[next_event & 0xfd]) {

      Outvol[next_event & 0xfd] = 0;
       cur_val -= pokeysnd_AUDV[next_event & 0xfd];
     }
    }
   }


   if ( POKEY_AUDCTL[next_event >> 2] & POKEY_CH2_FILTER) {

    if ((next_event & 0x03) == POKEY_CHAN4) {

     if (Outvol[next_event & 0xfd]) {

      Outvol[next_event & 0xfd] = 0;
       cur_val -= pokeysnd_AUDV[next_event & 0xfd];
     }
    }
   }


   if (toggle) {
    if (*out_ptr) {
      cur_val -= pokeysnd_AUDV[next_event];


     *out_ptr = 0;
    }
    else {

     *out_ptr = 1;
      cur_val += pokeysnd_AUDV[next_event];
    }
   }
  }
  else {



   int iout;
   iout = cur_val;
   *buffer++ = (UBYTE) iout;
   *Samp_n_cnt += Samp_n_max;


   n--;







  }
 }
}
