
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e_menu_adv_options ;
 int me_loop (int ,int*) ;

__attribute__((used)) static int menu_loop_adv_options(int id, int keys)
{
 static int sel = 0;
 me_loop(e_menu_adv_options, &sel);
 return 0;
}
