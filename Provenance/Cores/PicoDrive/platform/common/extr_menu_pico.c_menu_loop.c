
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_CFG_BLOCKING ;
 int MA_MAIN_CHANGE_CD ;
 int MA_MAIN_LOAD_STATE ;
 int MA_MAIN_PATCHES ;
 int MA_MAIN_RESET_GAME ;
 int MA_MAIN_RESUME_GAME ;
 int MA_MAIN_SAVE_STATE ;
 int PAHW_MCD ;
 int PBTN_MBACK ;
 int PBTN_MENU ;
 int PBTN_MOK ;
 scalar_t__ PGS_Menu ;
 scalar_t__ PGS_Running ;
 int PicoAHW ;
 int PicoGameLoaded ;
 int * PicoPatches ;
 int e_menu_main ;
 scalar_t__ engineState ;
 int in_menu_wait_any (int *,int) ;
 int in_set_config_int (int ,int ,int) ;
 int me_enable (int ,int ,int) ;
 int me_loop_d (int ,int*,int *,int ) ;
 int menu_enter (int) ;
 int menu_main_draw_status ;
 int plat_video_menu_leave () ;

void menu_loop(void)
{
 static int sel = 0;

 me_enable(e_menu_main, MA_MAIN_RESUME_GAME, PicoGameLoaded);
 me_enable(e_menu_main, MA_MAIN_SAVE_STATE, PicoGameLoaded);
 me_enable(e_menu_main, MA_MAIN_LOAD_STATE, PicoGameLoaded);
 me_enable(e_menu_main, MA_MAIN_RESET_GAME, PicoGameLoaded);
 me_enable(e_menu_main, MA_MAIN_CHANGE_CD, PicoAHW & PAHW_MCD);
 me_enable(e_menu_main, MA_MAIN_PATCHES, PicoPatches != ((void*)0));

 menu_enter(PicoGameLoaded);
 in_set_config_int(0, IN_CFG_BLOCKING, 1);
 me_loop_d(e_menu_main, &sel, ((void*)0), menu_main_draw_status);

 if (PicoGameLoaded) {
  if (engineState == PGS_Menu)
   engineState = PGS_Running;

  while (in_menu_wait_any(((void*)0), 50) & (PBTN_MENU|PBTN_MOK|PBTN_MBACK))
   ;
 }

 in_set_config_int(0, IN_CFG_BLOCKING, 0);
 plat_video_menu_leave();
}
