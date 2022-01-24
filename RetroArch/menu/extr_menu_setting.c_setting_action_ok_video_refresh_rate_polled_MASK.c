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
 int /*<<< orphan*/  CMD_EVENT_VIDEO_SET_BLOCKING_STATE ; 
 int /*<<< orphan*/  RARCH_DRIVER_CTL_SET_REFRESH_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 float FUNC3 () ; 

__attribute__((used)) static int FUNC4(rarch_setting_t *setting,
      bool wraparound)
{
   float refresh_rate = 0.0;

   if (!setting)
     return -1;

   if ((refresh_rate = FUNC3()) == 0.0)
      return -1;

   FUNC1(RARCH_DRIVER_CTL_SET_REFRESH_RATE, &refresh_rate);
   /* Incase refresh rate update forced non-block video. */
   FUNC0(CMD_EVENT_VIDEO_SET_BLOCKING_STATE, NULL);

   if (FUNC2(setting, wraparound) != 0)
      return -1;

   return 0;
}