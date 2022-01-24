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
 int /*<<< orphan*/  MENU_ANIMATION_CTL_SET_ACTIVE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,double,double,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (double*,double*,unsigned int*) ; 

__attribute__((used)) static void
FUNC5(
      rarch_setting_t *setting, char *s, size_t len)
{
   double video_refresh_rate = 0.0;
   double deviation          = 0.0;
   unsigned sample_points    = 0;
   if (!setting)
      return;

   if (FUNC4(&video_refresh_rate,
            &deviation, &sample_points))
   {
      FUNC2(s, len, "%.3f Hz (%.1f%% dev, %u samples)",
            video_refresh_rate, 100.0 * deviation, sample_points);
      FUNC0(MENU_ANIMATION_CTL_SET_ACTIVE, NULL);
   }
   else
      FUNC3(s, FUNC1(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE), len);
}