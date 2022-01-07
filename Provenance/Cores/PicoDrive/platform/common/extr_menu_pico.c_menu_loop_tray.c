
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_CFG_BLOCKING ;
 int PBTN_MBACK ;
 int PBTN_MENU ;
 int PBTN_MOK ;
 scalar_t__ PGS_RestartRun ;
 int PicoGameLoaded ;
 int e_menu_tray ;
 scalar_t__ engineState ;
 int in_menu_wait_any (int *,int) ;
 int in_set_config_int (int ,int ,int) ;
 int me_loop (int ,int*) ;
 int menu_enter (int ) ;
 int plat_video_menu_leave () ;

int menu_loop_tray(void)
{
 int ret = 1, sel = 0;

 menu_enter(PicoGameLoaded);

 in_set_config_int(0, IN_CFG_BLOCKING, 1);
 me_loop(e_menu_tray, &sel);

 if (engineState != PGS_RestartRun) {
  engineState = PGS_RestartRun;
  ret = 0;
 }

 while (in_menu_wait_any(((void*)0), 50) & (PBTN_MENU|PBTN_MOK|PBTN_MBACK))
  ;
 in_set_config_int(0, IN_CFG_BLOCKING, 0);
 plat_video_menu_leave();

 return ret;
}
