#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  label; int /*<<< orphan*/  enum_idx; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ menu_displaylist_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_HELP ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HELP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(void)
{
   menu_displaylist_info_t info;
   const char *label;

   if (!FUNC0())
      return;

   FUNC2(&info);

   info.list                 = FUNC3(0);
   info.enum_idx             = MENU_ENUM_LABEL_HELP;

   /* Set the label string, if it exists. */
   label                     = FUNC4(MENU_ENUM_LABEL_HELP);
   if (label)
      info.label             = FUNC5(label);

   FUNC1(DISPLAYLIST_HELP, &info);
}