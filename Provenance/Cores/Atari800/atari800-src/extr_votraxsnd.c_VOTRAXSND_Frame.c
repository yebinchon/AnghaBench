
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_TV_PAL ;
 scalar_t__ Atari800_tv_mode ;
 int FALSE ;
 int PBI_XLD_votrax_busy_callback (int ) ;
 double* POKEY_AUDF ;
 double VOICEBOX_BASEAUDF ;
 scalar_t__ VOICEBOX_enabled ;
 scalar_t__ VOICEBOX_ii ;
 int VOTRAXSND_busy ;
 scalar_t__ VTRX_RATE ;
 scalar_t__ dsprate ;
 double ratio ;
 double samples_per_frame ;
 scalar_t__ votrax_sync_samples ;
 int votraxsnd_enabled () ;

void VOTRAXSND_Frame(void)
{
 if (!votraxsnd_enabled()) return;







 votrax_sync_samples -= samples_per_frame;
 if (votrax_sync_samples <= 0 ) {
  votrax_sync_samples = 0;
  VOTRAXSND_busy = FALSE;



 }
}
