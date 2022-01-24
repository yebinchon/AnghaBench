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
struct TYPE_6__ {int need_push; int /*<<< orphan*/ * list; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; void* label; int /*<<< orphan*/  path; int /*<<< orphan*/  enum_idx; int /*<<< orphan*/  type_default; void* exts; } ;
typedef  TYPE_1__ menu_displaylist_info_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_MAIN_MENU ; 
 int /*<<< orphan*/  FILE_TYPE_PLAIN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MAIN_MENU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*) ; 

__attribute__((used)) static bool FUNC9(void *data)
{
   menu_displaylist_info_t info;

   file_list_t *menu_stack      = FUNC5(0);
   file_list_t *selection_buf   = FUNC6(0);

   FUNC2(&info);

   info.label                   = FUNC8(
         FUNC7(MENU_ENUM_LABEL_MAIN_MENU));
   info.exts                    = FUNC8("lpl");
   info.type_default            = FILE_TYPE_PLAIN;
   info.enum_idx                = MENU_ENUM_LABEL_MAIN_MENU;

   FUNC4(menu_stack, info.path,
         info.label,
         MENU_ENUM_LABEL_MAIN_MENU,
         info.type, info.flags, 0);

   info.list  = selection_buf;

   if (!FUNC0(DISPLAYLIST_MAIN_MENU, &info))
      goto error;

   info.need_push = true;

   if (!FUNC3(&info))
      goto error;

   FUNC1(&info);
   return true;

error:
   FUNC1(&info);
   return false;
}