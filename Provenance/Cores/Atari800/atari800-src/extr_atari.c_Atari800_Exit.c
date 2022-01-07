
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF80_Exit () ;
 int ATARI_CRASHED ;
 int CARTRIDGE_Exit () ;
 int CASSETTE_Exit () ;
 int CFG_WriteConfig () ;
 scalar_t__ CFG_save_on_exit ;
 scalar_t__ CPU_cim_encountered ;
 int Devices_Exit () ;
 int FALSE ;
 int IDE_Exit () ;
 int INPUT_Exit () ;
 int MONITOR_Exit () ;
 int PBI_Exit () ;
 int PLATFORM_Exit (int) ;
 int RDevice_Exit () ;
 int SDL_INIT_Exit () ;
 int SIO_Exit () ;
 int* Screen_atari_write_long_stat ;
 int SndSave_CloseSoundFile () ;
 int Sound_Exit () ;
 int VIDEOMODE_Exit () ;
 int g_ulAtariState ;
 scalar_t__* memory_read_aligned_word_stat ;
 int* memory_read_word_stat ;
 scalar_t__* memory_write_aligned_word_stat ;
 scalar_t__* memory_write_word_stat ;
 int* pm_scanline_read_long_stat ;
 int printf (char*,...) ;
 int sigint_flag ;

int Atari800_Exit(int run_monitor)
{
 int restart;
 restart = PLATFORM_Exit(run_monitor);





 if (!restart) {


  if (CFG_save_on_exit)
   CFG_WriteConfig();
  INPUT_Exit();

  PBI_Exit();
  CASSETTE_Exit();
  CARTRIDGE_Exit();
  SIO_Exit();



  Devices_Exit();






  MONITOR_Exit();



 }

 return restart;
}
