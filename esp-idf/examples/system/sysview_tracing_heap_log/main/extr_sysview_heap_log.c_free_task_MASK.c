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
typedef  int /*<<< orphan*/  QueueHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *p)
{
    QueueHandle_t queue = (QueueHandle_t)p;
    while (1) {
        void *p = NULL;
        if (FUNC3(queue, ( void * )&p, portMAX_DELAY) != pdPASS) {
            FUNC0(TAG, "Failed to send to queue!");
        } else {
            FUNC1(TAG, "Task[%p]: free memory @ %p", FUNC4(), p);
            FUNC2(p);
        }
    }
}