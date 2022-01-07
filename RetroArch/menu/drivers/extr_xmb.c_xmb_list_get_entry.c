
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* horizontal_list; } ;
typedef TYPE_1__ xmb_handle_t ;
struct TYPE_6__ {int * list; } ;
typedef TYPE_2__ file_list_t ;
typedef enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;
struct TYPE_7__ {int * list; } ;




 size_t file_list_get_size (TYPE_4__*) ;
 TYPE_2__* menu_entries_get_menu_stack_ptr (int ) ;
 size_t menu_entries_get_stack_size (int ) ;

__attribute__((used)) static void *xmb_list_get_entry(void *data,
      enum menu_list_type type, unsigned i)
{
   size_t list_size = 0;
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   switch (type)
   {
      case 128:
         {
            file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
            list_size = menu_entries_get_stack_size(0);
            if (i < list_size)
               return (void*)&menu_stack->list[i];
         }
         break;
      case 129:
         if (xmb && xmb->horizontal_list)
            list_size = file_list_get_size(xmb->horizontal_list);
         if (i < list_size)
            return (void*)&xmb->horizontal_list->list[i];
         break;
      default:
         break;
   }

   return ((void*)0);
}
