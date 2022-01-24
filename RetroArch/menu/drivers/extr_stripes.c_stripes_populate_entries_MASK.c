#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_active_idx_old; } ;
typedef  TYPE_1__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_IS_PREVENT_POPULATE ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(void *data,
      const char *path,
      const char *label, unsigned k)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (!stripes)
      return;

   if (FUNC0(RARCH_MENU_CTL_IS_PREVENT_POPULATE, NULL))
   {
      FUNC5(stripes, false);
      FUNC0(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, NULL);
      if (!FUNC2(FUNC7('R'),
               FUNC1(MENU_ENUM_LABEL_VALUE_OFF)))
         FUNC9(stripes);
      FUNC8(stripes);
      if (!FUNC2(FUNC7('L'),
               FUNC1(MENU_ENUM_LABEL_VALUE_OFF)))
         FUNC9(stripes);
      return;
   }

   FUNC6(stripes);

   if (stripes->categories_selection_ptr != stripes->categories_active_idx_old)
      FUNC4(stripes);
   else
      FUNC3(stripes);
}