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
typedef  enum rarch_override_setting { ____Placeholder_rarch_override_setting } rarch_override_setting ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 unsigned int RARCH_OVERRIDE_SETTING_LAST ; 
 unsigned int RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int*) ; 

__attribute__((used)) static void FUNC1(void)
{
   unsigned i;
   for (i = 0; i < RARCH_OVERRIDE_SETTING_LAST; i++)
   {
      if (i == RARCH_OVERRIDE_SETTING_LIBRETRO_DEVICE)
      {
         unsigned j;
         for (j = 0; j < MAX_USERS; j++)
            FUNC0(
                  (enum rarch_override_setting)(i), &j);
      }
      else
         FUNC0(
               (enum rarch_override_setting)(i), NULL);
   }
}