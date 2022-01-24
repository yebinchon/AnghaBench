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
 int QUEUE_LEN ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int* sync_flags ; 
 int /*<<< orphan*/  sync_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
    QueueHandle_t queue = (QueueHandle_t)arg;

    //Wait until task on the other core starts running
    FUNC4(sync_sem, portMAX_DELAY);
    sync_flags[FUNC1()] = true;
    while (!sync_flags[!FUNC1()]) {
        ;
    }

    //Fill queue
    for (int i = 0; i < QUEUE_LEN; i++) {
        uint32_t item = i;
        FUNC2(queue, &item, portMAX_DELAY);
    }

    FUNC3(sync_sem);
    FUNC0(NULL);
}