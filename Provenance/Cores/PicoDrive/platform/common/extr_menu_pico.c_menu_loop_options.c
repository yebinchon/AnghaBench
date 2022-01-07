
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OPT_LOADCFG ;
 int MA_OPT_SAVECFG_GAME ;
 int PicoGameLoaded ;
 scalar_t__ config_slot ;
 scalar_t__ config_slot_current ;
 int e_menu_options ;
 int me_enable (int ,int ,int) ;
 int me_loop (int ,int*) ;

__attribute__((used)) static int menu_loop_options(int id, int keys)
{
 static int sel = 0;

 me_enable(e_menu_options, MA_OPT_SAVECFG_GAME, PicoGameLoaded);
 me_enable(e_menu_options, MA_OPT_LOADCFG, config_slot != config_slot_current);

 me_loop(e_menu_options, &sel);

 return 0;
}
