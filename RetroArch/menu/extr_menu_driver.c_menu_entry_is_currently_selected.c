
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int menu_driver_selection_ptr ;

bool menu_entry_is_currently_selected(unsigned id)
{
   return id == menu_driver_selection_ptr;
}
