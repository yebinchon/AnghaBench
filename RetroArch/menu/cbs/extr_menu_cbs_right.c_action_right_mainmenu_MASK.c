#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ menu_navigation_wraparound_enable; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {int size; scalar_t__ selection; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ menu_ctx_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  MENU_LIST_PLAIN ; 
 int /*<<< orphan*/  MENU_LIST_TABS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(unsigned type, const char *label,
      bool wraparound)
{
   menu_ctx_list_t list_info;

   FUNC3(&list_info);

   list_info.type = MENU_LIST_PLAIN;

   FUNC4(&list_info);

   if (list_info.size == 1)
   {
      menu_ctx_list_t list_horiz_info;
      menu_ctx_list_t list_tabs_info;
      settings_t      *settings = FUNC2();

      list_horiz_info.type      = MENU_LIST_HORIZONTAL;
      list_tabs_info.type       = MENU_LIST_TABS;

      FUNC4(&list_horiz_info);
      FUNC4(&list_tabs_info);

      if ((list_info.selection != (list_horiz_info.size + list_tabs_info.size))
         || settings->bools.menu_navigation_wraparound_enable)
         return FUNC0();
   }
   else
      FUNC1(0, "", false);

   return 0;
}