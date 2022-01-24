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
typedef  int /*<<< orphan*/  retro_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_NETPLAY_DISCOVERY_CTL_LAN_CLEAR_RESPONSES ; 
 int /*<<< orphan*/  RARCH_NETPLAY_DISCOVERY_CTL_LAN_SEND_QUERY ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(retro_task_t *task)
{
   if (FUNC0())
   {
      FUNC1(
            RARCH_NETPLAY_DISCOVERY_CTL_LAN_CLEAR_RESPONSES, NULL);
      FUNC1(
            RARCH_NETPLAY_DISCOVERY_CTL_LAN_SEND_QUERY, NULL);
   }

   FUNC3(task, 100);
   FUNC2(task, true);

   return;
}