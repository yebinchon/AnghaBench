#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  task_handle; int /*<<< orphan*/  has_reset; struct TYPE_3__* next; } ;
typedef  TYPE_1__ twdt_task_t ;
struct TYPE_4__ {scalar_t__ panic; TYPE_1__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_RST_TASK_WDT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TIMERG0 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  TIMER_INTR_WDT ; 
 int /*<<< orphan*/  VOID_RETURN ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int portNUM_PROCESSORS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ tskNO_AFFINITY ; 
 TYPE_2__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(void *arg)
{
    FUNC7(&twdt_spinlock);
    twdt_task_t *twdttask;
    const char *cpu;
    //Reset hardware timer so that 2nd stage timeout is not reached (will trigger system reset)
    FUNC11(&TIMERG0, false);
    FUNC10(&TIMERG0);
    FUNC11(&TIMERG0, true);
    //Acknowledge interrupt
    FUNC9(TIMER_GROUP_0, TIMER_INTR_WDT);
    //We are taking a spinlock while doing I/O (ESP_EARLY_LOGE) here. Normally, that is a pretty
    //bad thing, possibly (temporarily) hanging up the 2nd core and stopping FreeRTOS. In this case,
    //something bad already happened and reporting this is considered more important
    //than the badness caused by a spinlock here.

    //Return immediately if no tasks have been added to task list
    FUNC0((twdt_config->list != NULL), VOID_RETURN);

    //Watchdog got triggered because at least one task did not reset in time.
    FUNC2(TAG, "Task watchdog got triggered. The following tasks did not reset the watchdog in time:");
    for (twdttask=twdt_config->list; twdttask!=NULL; twdttask=twdttask->next) {
        if (!twdttask->has_reset) {
            cpu=FUNC12(twdttask->task_handle)==0?FUNC1("CPU 0"):FUNC1("CPU 1");
            if (FUNC12(twdttask->task_handle)==tskNO_AFFINITY) cpu=FUNC1("CPU 0/1");
            FUNC2(TAG, " - %s (%s)", FUNC6(twdttask->task_handle), cpu);
        }
    }
    FUNC2(TAG, "%s", FUNC1("Tasks currently running:"));
    for (int x=0; x<portNUM_PROCESSORS; x++) {
        FUNC2(TAG, "CPU %d: %s", x, FUNC6(FUNC13(x)));
    }

    FUNC5();
    if (twdt_config->panic){     //Trigger Panic if configured to do so
        FUNC2(TAG, "Aborting.");
        FUNC8(&twdt_spinlock);
        FUNC4(ESP_RST_TASK_WDT);
        FUNC3();
    }

    FUNC8(&twdt_spinlock);
}