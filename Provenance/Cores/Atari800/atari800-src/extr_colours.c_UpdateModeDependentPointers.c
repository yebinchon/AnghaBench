
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_ErrExit () ;
 int Atari800_TV_NTSC ;
 int Atari800_TV_PAL ;
 int COLOURS_NTSC_external ;
 int COLOURS_NTSC_setup ;
 int COLOURS_PAL_external ;
 int COLOURS_PAL_setup ;
 int * Colours_external ;
 int * Colours_setup ;
 int Log_print (char*) ;
 int exit (int) ;

__attribute__((used)) static void UpdateModeDependentPointers(int tv_mode)
{

 if (tv_mode == Atari800_TV_NTSC) {
  Colours_setup = &COLOURS_NTSC_setup;
  Colours_external = &COLOURS_NTSC_external;
 }
        else if (tv_mode == Atari800_TV_PAL) {
  Colours_setup = &COLOURS_PAL_setup;
  Colours_external = &COLOURS_PAL_external;
 }
 else {
  Atari800_ErrExit();
  Log_print("Interal error: Invalid Atari800_tv_mode\n");
  exit(1);
 }
}
