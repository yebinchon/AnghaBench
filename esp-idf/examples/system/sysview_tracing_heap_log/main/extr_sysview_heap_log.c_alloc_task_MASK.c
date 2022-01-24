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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  QueueHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  HEAP_TRACE_ALL ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  free_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ portNUM_PROCESSORS ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void *p)
{
    QueueHandle_t queue = (QueueHandle_t)p;

    FUNC7(free_task, "free", 2048, queue, 5, NULL, portNUM_PROCESSORS-1);

    // here GDB will stop at brekpoint and execute OpenOCD command to start tracing
    FUNC2(HEAP_TRACE_ALL);
    for(int i = 1; i < 5; i++) {
        uint32_t sz = 2*i;
        void *p = FUNC4(sz/2);
        // WARNING: the previous allocated memory is intentionally not deallocated in order to cause memory leak!
        p = FUNC4(sz);
        FUNC1(TAG, "Task[%p]: allocated %d bytes @ %p", FUNC8(), sz, p);
        if (FUNC6(queue, ( void * )&p, portMAX_DELAY) != pdPASS) {
            FUNC0(TAG, "Failed to send to queue!");
        }
        FUNC5(100/portTICK_PERIOD_MS);
    }
    // here GDB will stop at brekpoint and execute OpenOCD command to stop tracing
    FUNC3();
    while(1);
}