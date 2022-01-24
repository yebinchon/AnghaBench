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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 void* cmd_cmd_queue ; 
 void* cmd_heartbeat_queue ; 
 int /*<<< orphan*/  spp_cmd_task ; 
 int /*<<< orphan*/  spp_heartbeat_task ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
    FUNC0();

#ifdef SUPPORT_HEARTBEAT
    cmd_heartbeat_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(spp_heartbeat_task, "spp_heartbeat_task", 2048, NULL, 10, NULL);
#endif

    cmd_cmd_queue = FUNC1(10, sizeof(uint32_t));
    FUNC2(spp_cmd_task, "spp_cmd_task", 2048, NULL, 10, NULL);
}