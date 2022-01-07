
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t system_tab_end; int horizontal_list; } ;
typedef TYPE_1__ xmb_handle_t ;
typedef enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;





 size_t file_list_get_size (int ) ;
 size_t menu_entries_get_stack_size (int ) ;

__attribute__((used)) static size_t xmb_list_get_size(void *data, enum menu_list_type type)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   switch (type)
   {
      case 129:
         return menu_entries_get_stack_size(0);
      case 130:
         if (xmb && xmb->horizontal_list)
            return file_list_get_size(xmb->horizontal_list);
         break;
      case 128:
         return xmb->system_tab_end;
   }

   return 0;
}
