
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;


 int POKEYSND_BIT16 ;
 int POKEYSND_Process_ptr ;
 int POKEYSND_UpdateConsol_ptr ;
 int POKEYSND_UpdateSerio ;
 int POKEYSND_UpdateVolOnly ;
 int POKEYSND_Update_ptr ;
 double POKEYSND_playback_freq ;
 int POKEYSND_samp_freq ;
 int ResetPokeyState (scalar_t__) ;
 int Update_consol_sound_mz ;
 int Update_pokey_sound_mz ;
 int Update_serio_sound_mz ;
 int Update_vol_only_sound_mz ;
 int audible_frq ;
 int build_poly17 () ;
 int build_poly4 () ;
 int build_poly5 () ;
 int build_poly9 () ;
 int filter_11 ;
 int filter_11_8 ;
 int filter_22 ;
 int filter_22_8 ;
 int filter_44 ;
 int filter_44_8 ;
 int filter_48 ;
 int filter_48_8 ;
 int filter_8 ;
 int filter_8_8 ;
 int filter_data ;
 int filter_size ;
 int filter_size_11 ;
 int filter_size_11_8 ;
 int filter_size_22 ;
 int filter_size_22_8 ;
 int filter_size_44 ;
 int filter_size_44_8 ;
 int filter_size_48 ;
 int filter_size_48_8 ;
 int filter_size_8 ;
 int filter_size_8_8 ;
 int init_syncsound () ;
 int mzpokeysnd_process_16 ;
 int mzpokeysnd_process_8 ;
 int num_cur_pokeys ;
 double pokey_frq ;
 scalar_t__ pokey_frq_ideal ;
 scalar_t__ pokey_states ;
 int remez_filter_table (double,double*,int) ;
 int snd_quality ;

int MZPOKEYSND_Init(ULONG freq17, int playback_freq, UBYTE num_pokeys,
                        int flags, int quality



                       )
{
    double cutoff;

    snd_quality = quality;

    POKEYSND_Update_ptr = Update_pokey_sound_mz;
 POKEYSND_Process_ptr = (flags & POKEYSND_BIT16) ? mzpokeysnd_process_16 : mzpokeysnd_process_8;

    switch(playback_freq)
    {
    default:
        pokey_frq = (int)(((double)pokey_frq_ideal/POKEYSND_playback_freq) + 0.5)
          * POKEYSND_playback_freq;
 filter_size = remez_filter_table((double)POKEYSND_playback_freq/pokey_frq,
      &cutoff, quality);
 audible_frq = (int ) (cutoff * pokey_frq);
    }

    build_poly4();
    build_poly5();
    build_poly9();
    build_poly17();




 {
  ResetPokeyState(pokey_states);
  ResetPokeyState(pokey_states + 1);
 }
 num_cur_pokeys = num_pokeys;




 return 0;
}
