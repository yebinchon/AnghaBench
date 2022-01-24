#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_4__* horizontal_list; } ;
typedef  TYPE_1__ stripes_handle_t ;
struct TYPE_6__ {int /*<<< orphan*/ * list; } ;
typedef  TYPE_2__ file_list_t ;
typedef  enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;
struct TYPE_7__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
#define  MENU_LIST_HORIZONTAL 129 
#define  MENU_LIST_PLAIN 128 
 size_t FUNC0 (TYPE_4__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(void *data,
      enum menu_list_type type, unsigned i)
{
   size_t list_size        = 0;
   stripes_handle_t *stripes       = (stripes_handle_t*)data;

   switch (type)
   {
      case MENU_LIST_PLAIN:
         {
            file_list_t *menu_stack = FUNC1(0);
            list_size  = FUNC2(0);
            if (i < list_size)
               return (void*)&menu_stack->list[i];
         }
         break;
      case MENU_LIST_HORIZONTAL:
         if (stripes && stripes->horizontal_list)
            list_size = FUNC0(stripes->horizontal_list);
         if (i < list_size)
            return (void*)&stripes->horizontal_list->list[i];
         break;
      default:
         break;
   }

   return NULL;
}