
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_Frame (void*) ;
 int Atari800_Coldstart () ;
 int Atari800_ErrExit () ;
 int Atari800_Exit (void*) ;
 int Atari800_Sync () ;
 int Atari800_Warmstart () ;
 void* Atari800_collisions_in_skipped_frames ;
 void* Atari800_display_screen ;
 scalar_t__ Atari800_nframes ;
 int Atari800_refresh_rate ;
 int Atari800_turbo ;
 scalar_t__ BENCHMARK ;
 int Devices_Frame () ;
 void* FALSE ;
 int GTIA_Frame () ;
 int INPUT_DrawMousePointer () ;
 int INPUT_Frame () ;
 int INPUT_key_code ;
 int PBI_BB_Frame () ;
 int PBI_BB_Menu () ;
 int POKEY_Frame () ;
 int Screen_Draw1200LED () ;
 int Screen_DrawAtariSpeed (double) ;
 int Screen_DrawDiskLED () ;
 int Screen_SaveNextScreenshot (void*) ;
 int Sound_Continue () ;
 int Sound_Pause () ;
 int Sound_Update () ;
 void* TRUE ;
 int UI_MENU_MONITOR ;
 int UI_Run () ;
 int UI_alt_function ;
 double Util_time () ;
 int VOTRAXSND_Frame () ;
 int basic_frame () ;
 double benchmark_start_time ;
 int curses_clear_screen () ;
 int exit (int ) ;
 int printf (char*,scalar_t__,double) ;
 void* sigint_flag ;

void Atari800_Frame(void)
{

 static int refresh_counter = 0;
 switch (INPUT_key_code) {
 case 135:
  Atari800_Coldstart();
  break;
 case 128:
  Atari800_Warmstart();
  break;
 case 134:
  Atari800_Exit(FALSE);
  exit(0);
 case 130:
  Atari800_turbo = !Atari800_turbo;
  break;
 case 129:



  UI_Run();



  break;

 case 132:
  Screen_SaveNextScreenshot(FALSE);
  break;
 case 131:
  Screen_SaveNextScreenshot(TRUE);
  break;

 case 133:



  break;
 default:
  break;
 }
 Devices_Frame();

 INPUT_Frame();

 GTIA_Frame();




 if (++refresh_counter >= Atari800_refresh_rate) {
  refresh_counter = 0;






  ANTIC_Frame(TRUE);
  INPUT_DrawMousePointer();
  Screen_DrawAtariSpeed(Util_time());
  Screen_DrawDiskLED();
  Screen_Draw1200LED();




  Atari800_display_screen = TRUE;

 }
 else {



  ANTIC_Frame(Atari800_collisions_in_skipped_frames);

  Atari800_display_screen = FALSE;
 }

 POKEY_Frame();



 Atari800_nframes++;
  if (Atari800_turbo) {


   static double last_display_screen_time = 0.0;
   static double const limit = 1.0 / 60.0;

   double cur_time = Util_time();
   if (cur_time - last_display_screen_time > limit)
    last_display_screen_time = cur_time;
   else
    Atari800_display_screen = FALSE;
  }
  else
   Atari800_Sync();

}
