#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  menu_list_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const**,char const**,unsigned int*,size_t*) ; 
 size_t menu_driver_selection_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (char const*,char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t*,int) ; 

__attribute__((used)) static void FUNC5(menu_list_t *list,
      size_t idx, const char *needle, unsigned final_type)
{
   bool refresh           = false;
   const char *path       = NULL;
   const char *label      = NULL;
   unsigned type          = 0;
   size_t entry_idx       = 0;
   file_list_t *menu_list = FUNC3(list, (unsigned)idx);

   FUNC1(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC0(menu_list,
         &path, &label, &type, &entry_idx);

   while (FUNC2(
            needle, label, type, final_type) != 0)
   {
      size_t new_selection_ptr = menu_driver_selection_ptr;

      if (!FUNC4(list, idx, &new_selection_ptr, 1))
         break;

      menu_driver_selection_ptr = new_selection_ptr;

      menu_list = FUNC3(list, (unsigned)idx);

      FUNC0(menu_list,
            &path, &label, &type, &entry_idx);
   }
}