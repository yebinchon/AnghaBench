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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(void *userdata, const char *str)
{
   if (str && *str)
   {
      const char        *label = FUNC1();
      rarch_setting_t *setting = FUNC2(label);

      if (setting)
      {
         unsigned *ptr = (unsigned*)FUNC3(setting);
         if (str[0] == '#')
            str++;
         if (ptr)
            *ptr = (unsigned)FUNC4(str, NULL, 16);
      }
   }

   FUNC0();
}