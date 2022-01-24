#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * horizontal_list; } ;
typedef  TYPE_1__ stripes_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PREVENT_POPULATE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(stripes_handle_t *stripes)
{
   FUNC3(stripes);
   if (stripes->horizontal_list)
   {
      FUNC5(stripes->horizontal_list, false);
      FUNC1(stripes->horizontal_list);
   }
   stripes->horizontal_list = NULL;

   FUNC2(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);

   stripes->horizontal_list         = (file_list_t*)
      FUNC0(1, sizeof(file_list_t));

   if (stripes->horizontal_list)
      FUNC6(stripes);

   FUNC4(stripes);
}