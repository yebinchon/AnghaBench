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
typedef  int /*<<< orphan*/  file_list_t ;
typedef  int /*<<< orphan*/  core_option_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_DISABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ENABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ON ; 
 unsigned int MENU_SETTINGS_CORE_OPTION_START ; 
 int /*<<< orphan*/  RARCH_CTL_CORE_OPTIONS_LIST_GET ; 
 char* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC5(file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   core_option_manager_t *coreopts = NULL;
   const char *core_opt = NULL;

   *s = '\0';
   *w = 19;

   if (FUNC2(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts))
   {
      core_opt = FUNC0(coreopts,
            type - MENU_SETTINGS_CORE_OPTION_START);

      FUNC4(s, "", len);

      if (core_opt)
      {
         if (FUNC3(core_opt, FUNC1(MENU_ENUM_LABEL_ENABLED)))
            core_opt = FUNC1(MENU_ENUM_LABEL_VALUE_ON);
         else if (FUNC3(core_opt, FUNC1(MENU_ENUM_LABEL_DISABLED)))
            core_opt = FUNC1(MENU_ENUM_LABEL_VALUE_OFF);
         FUNC4(s, core_opt, len);
      }
   }

   FUNC4(s2, path, len2);
}