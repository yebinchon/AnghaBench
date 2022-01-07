
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* menuErrorMsg ;
 int menu_gfx_prepare () ;
 int menu_loop_root () ;

void menu_loop(void)
{
 menu_gfx_prepare();

 menu_loop_root();

 menuErrorMsg[0] = 0;
}
