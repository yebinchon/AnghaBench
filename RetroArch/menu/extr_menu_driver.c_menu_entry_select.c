
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int menu_entry_t ;


 int MENU_ACTION_SELECT ;
 scalar_t__ menu_driver_selection_ptr ;
 int menu_entry_action (int *,size_t,int ) ;
 int menu_entry_get (int *,int ,scalar_t__,int *,int) ;
 int menu_entry_init (int *) ;

int menu_entry_select(uint32_t i)
{
   menu_entry_t entry;

   menu_driver_selection_ptr = i;

   menu_entry_init(&entry);
   menu_entry_get(&entry, 0, i, ((void*)0), 0);

   return menu_entry_action(&entry, (size_t)i, MENU_ACTION_SELECT);
}
