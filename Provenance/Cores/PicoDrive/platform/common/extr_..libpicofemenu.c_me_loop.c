
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_entry ;


 int me_loop_d (int *,int*,int *,int *) ;

__attribute__((used)) static int me_loop(menu_entry *menu, int *menu_sel)
{
 return me_loop_d(menu, menu_sel, ((void*)0), ((void*)0));
}
