
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_menu_tabs; } ;
struct TYPE_4__ {TYPE_1__ nav_bar; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;




 size_t menu_entries_get_stack_size (int ) ;

__attribute__((used)) static size_t materialui_list_get_size(void *data, enum menu_list_type type)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;

   switch (type)
   {
      case 129:
         return menu_entries_get_stack_size(0);
      case 128:
         if (!mui)
            return 0;
         return (size_t)mui->nav_bar.num_menu_tabs;
      default:
         break;
   }

   return 0;
}
