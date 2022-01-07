
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;


 scalar_t__* Div_n_cnt ;
 int* Div_n_max ;
 int Num_pokeys ;
 scalar_t__* Outbit ;
 scalar_t__* Outvol ;
 scalar_t__ P17 ;
 scalar_t__ P4 ;
 scalar_t__ P5 ;
 scalar_t__ P9 ;
 int POKEYSND_BIT16 ;
 int POKEYSND_Process_ptr ;
 int POKEYSND_UpdateConsol_ptr ;
 int POKEYSND_UpdateSerio ;
 int POKEYSND_UpdateVolOnly ;
 int POKEYSND_Update_ptr ;
 int POKEYSND_samp_freq ;
 scalar_t__* POKEYSND_sampbuf_AUDV ;
 int POKEY_MAXPOKEYS ;
 scalar_t__* Samp_n_cnt ;
 int Samp_n_max ;
 int Update_consol_sound_rf ;
 int Update_pokey_sound_rf ;
 int Update_serio_sound_rf ;
 int Update_vol_only_sound_rf ;
 int init_syncsound () ;
 scalar_t__* pokeysnd_AUDV ;
 int pokeysnd_process_16 ;
 int pokeysnd_process_8 ;

__attribute__((used)) static int pokeysnd_init_rf(ULONG freq17, int playback_freq,
           UBYTE num_pokeys, int flags)
{
 UBYTE chan;

 POKEYSND_Update_ptr = Update_pokey_sound_rf;
 POKEYSND_Process_ptr = (flags & POKEYSND_BIT16) ? pokeysnd_process_16 : pokeysnd_process_8;






 P4 = 0;
 P5 = 0;
 P9 = 0;
 P17 = 0;


 Samp_n_max = ((ULONG) freq17 << 8) / playback_freq;

 Samp_n_cnt[0] = 0;
 Samp_n_cnt[1] = 0;

 for (chan = 0; chan < (POKEY_MAXPOKEYS * 4); chan++) {
  Outvol[chan] = 0;
  Outbit[chan] = 0;
  Div_n_cnt[chan] = 0;
  Div_n_max[chan] = 0x7fffffffL;
  pokeysnd_AUDV[chan] = 0;



 }


 Num_pokeys = num_pokeys;




 return 0;
}
