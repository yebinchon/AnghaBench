
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_CTRL_DEADZONE ;
 int e_menu_keyconfig ;
 int me_enable (int ,int ,int ) ;

void pnd_menu_init(void)
{
 me_enable(e_menu_keyconfig, MA_CTRL_DEADZONE, 0);
}
