
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_dev1; int input_dev0; } ;


 int MA_OPT_SAVECFG_GAME ;
 int PicoGameLoaded ;
 int PicoSetInputDevice (int,int ) ;
 TYPE_1__ currentConfig ;
 int e_menu_keyconfig ;
 int me_enable (int ,int ,int ) ;
 int me_loop (int ,int*) ;

__attribute__((used)) static int menu_loop_keyconfig(int id, int keys)
{
 static int sel = 0;

 me_enable(e_menu_keyconfig, MA_OPT_SAVECFG_GAME, PicoGameLoaded);
 me_loop(e_menu_keyconfig, &sel);

 PicoSetInputDevice(0, currentConfig.input_dev0);
 PicoSetInputDevice(1, currentConfig.input_dev1);

 return 0;
}
