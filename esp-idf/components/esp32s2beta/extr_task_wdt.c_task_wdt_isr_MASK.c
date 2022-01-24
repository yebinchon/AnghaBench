#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  task_handle; int /*<<< orphan*/  has_reset; struct TYPE_6__* next; } ;
typedef  TYPE_2__ twdt_task_t ;
struct TYPE_5__ {int wdt; } ;
struct TYPE_8__ {int wdt_feed; TYPE_1__ int_clr; scalar_t__ wdt_wprotect; } ;
struct TYPE_7__ {scalar_t__ panic; TYPE_2__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_4__ TIMERG0 ; 
 scalar_t__ TIMG_WDT_WKEY_VALUE ; 
 int /*<<< orphan*/  VOID_RETURN ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int portNUM_PROCESSORS ; 
 scalar_t__ tskNO_AFFINITY ; 
 TYPE_3__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void *arg)
{
    FUNC6(&twdt_spinlock);
    twdt_task_t *twdttask;
    const char *cpu;
    //Reset hardware timer so that 2nd stage timeout is not reached (will trigger system reset)
    TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
    TIMERG0.wdt_feed=1;
    TIMERG0.wdt_wprotect=0;
    //Acknowledge interrupt
    TIMERG0.int_clr.wdt=1;
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
            cpu=FUNC8(twdttask->task_handle)==0?FUNC1("CPU 0"):FUNC1("CPU 1");
            if (FUNC8(twdttask->task_handle)==tskNO_AFFINITY) cpu=FUNC1("CPU 0/1");
            FUNC2(TAG, " - %s (%s)", FUNC5(twdttask->task_handle), cpu);
        }
    }
    FUNC2(TAG, "%s", FUNC1("Tasks currently running:"));
    for (int x=0; x<portNUM_PROCESSORS; x++) {
        FUNC2(TAG, "CPU %d: %s", x, FUNC5(FUNC9(x)));
    }

    FUNC4();
    if (twdt_config->panic){     //Trigger Panic if configured to do so
        FUNC2(TAG, "Aborting.");
        FUNC7(&twdt_spinlock);
        // TODO: Add support reset reason for esp32s2beta.
        // esp_reset_reason_set_hint(ESP_RST_TASK_WDT);
        FUNC3();
    }

    FUNC7(&twdt_spinlock);
}