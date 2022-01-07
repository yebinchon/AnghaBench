
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active_menu_tab_index; } ;
struct TYPE_4__ {TYPE_1__ nav_bar; } ;
typedef TYPE_2__ materialui_handle_t ;



__attribute__((used)) static size_t materialui_list_get_selection(void *data)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;

   if (!mui)
      return 0;

   return (size_t)mui->nav_bar.active_menu_tab_index;
}
