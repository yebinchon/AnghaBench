
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* parent; int next; } ;


 TYPE_1__* current_menu ;
 int * last_entry_ptr ;

void menu_end_menu(void)
{
 last_entry_ptr = &current_menu->next;
 current_menu = current_menu->parent;
}
