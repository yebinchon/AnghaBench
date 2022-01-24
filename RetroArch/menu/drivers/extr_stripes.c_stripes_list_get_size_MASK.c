#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t system_tab_end; int /*<<< orphan*/  horizontal_list; } ;
typedef  TYPE_1__ stripes_handle_t ;
typedef  enum menu_list_type { ____Placeholder_menu_list_type } menu_list_type ;

/* Variables and functions */
#define  MENU_LIST_HORIZONTAL 130 
#define  MENU_LIST_PLAIN 129 
#define  MENU_LIST_TABS 128 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(void *data, enum menu_list_type type)
{
   stripes_handle_t *stripes       = (stripes_handle_t*)data;

   switch (type)
   {
      case MENU_LIST_PLAIN:
         return FUNC1(0);
      case MENU_LIST_HORIZONTAL:
         if (stripes && stripes->horizontal_list)
            return FUNC0(stripes->horizontal_list);
         break;
      case MENU_LIST_TABS:
         return stripes->system_tab_end;
   }

   return 0;
}