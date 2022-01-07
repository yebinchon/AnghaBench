
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * name; } ;
typedef TYPE_1__ menu_entry ;


 int array_size (TYPE_1__**) ;
 TYPE_1__** e_menu_table ;
 TYPE_1__* me_list_i ;
 TYPE_1__* me_list_table ;

menu_entry *me_list_get_next(void)
{
 int i;

 me_list_i++;
 if (me_list_i->name != ((void*)0))
  return me_list_i;

 for (i = 0; i < array_size(e_menu_table); i++)
  if (me_list_table == e_menu_table[i])
   break;

 if (i + 1 < array_size(e_menu_table))
  me_list_table = me_list_i = e_menu_table[i + 1];
 else
  me_list_table = me_list_i = ((void*)0);

 return me_list_i;
}
