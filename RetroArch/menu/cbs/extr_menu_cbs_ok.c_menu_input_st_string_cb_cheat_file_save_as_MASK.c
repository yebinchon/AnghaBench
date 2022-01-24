#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path_cheat_database; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(
      void *userdata, const char *str)
{
   if (str && *str)
   {
      rarch_setting_t *setting = NULL;
      settings_t *settings     = FUNC1();
      const char        *label = FUNC3();

      if (!FUNC7(label))
         setting = FUNC4(label);

      if (setting)
      {
         FUNC6(setting, str);
         FUNC5(setting, false);
      }
      else if (!FUNC7(label))
         FUNC0(str, settings->paths.path_cheat_database,false);
   }

   FUNC2();
}