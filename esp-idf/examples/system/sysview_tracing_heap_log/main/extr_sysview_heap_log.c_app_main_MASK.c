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
typedef  scalar_t__ QueueHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  alloc_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  esp_sysview_vprintf ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
    // redirect log messages to the host using SystemView tracing module
    FUNC1(&esp_sysview_vprintf);
    QueueHandle_t queue = FUNC3(10, sizeof(void *));
    if(queue == 0) {
        FUNC0(TAG, "Failed to create queue!");
        return;
    }
    // init host-based heap tracing
    if(FUNC2() != ESP_OK) {
        FUNC0(TAG, "Failed to init heap trace!");
        return;
    }
    FUNC4(alloc_task, "alloc", 2048, queue, 5, NULL, 0);
}