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
typedef  int /*<<< orphan*/  rarch_setting_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(void *userdata, const char *str)
{
   if (str && *str)
   {
      rarch_setting_t *setting = NULL;
      const char        *label = FUNC1();

      if (!FUNC5(label))
         setting = FUNC2(label);

      if (setting)
      {
         FUNC4(setting, str);
         FUNC3(setting, false);
      }
   }

   FUNC0();
}