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

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ONLINE_UPDATER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx)
{
   const char *menu_label              = NULL;

   FUNC1(NULL, &menu_label, NULL, NULL, NULL);

   if (FUNC3(menu_label, FUNC2(MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST)))
      FUNC0(FUNC2(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (FUNC3(menu_label, FUNC2(MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST)))
      FUNC0(FUNC2(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (FUNC3(menu_label, FUNC2(MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS)))
      FUNC0(FUNC2(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (FUNC3(menu_label, FUNC2(MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST)))
      FUNC0(FUNC2(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else
      FUNC0(FUNC2(MENU_ENUM_LABEL_ADD_CONTENT_LIST), 0);

   return 0;
}