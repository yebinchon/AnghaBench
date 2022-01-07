
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_entry ;


 int ** e_menu_table ;
 int * me_list_i ;
 int * me_list_table ;

menu_entry *me_list_get_first(void)
{
 me_list_table = me_list_i = e_menu_table[0];
 return me_list_i;
}
