#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmr_obj_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_1__ tmr_ctrl_t ;
typedef  int /*<<< orphan*/  timer_list_t ;
struct TYPE_10__ {scalar_t__ size; int /*<<< orphan*/ ** slots; scalar_t__ index; scalar_t__ resolution; scalar_t__ nextScanAt; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ time_wheel_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/ * slots; scalar_t__ size; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSECONDS_PER_TICK ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int taosMaxTmrCtrl ; 
 int /*<<< orphan*/  taosTimerLoopFunc ; 
 int /*<<< orphan*/  taosTmrThreads ; 
 TYPE_6__ timerMap ; 
 int /*<<< orphan*/  tmrCtrlMutex ; 
 TYPE_1__* tmrCtrls ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  tmrQhandle ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* unusedTmrCtrl ; 
 TYPE_2__* wheels ; 

__attribute__((used)) static void FUNC10(void) {
  tmrCtrls = FUNC1(sizeof(tmr_ctrl_t) * taosMaxTmrCtrl);
  if (tmrCtrls == NULL) {
    FUNC8("failed to allocate memory for timer controllers.");
    return;
  }

  for (int i = 0; i < taosMaxTmrCtrl - 1; ++i) {
    tmr_ctrl_t* ctrl = tmrCtrls + i;
    ctrl->next = ctrl + 1;
  }
  unusedTmrCtrl = tmrCtrls;

  FUNC2(&tmrCtrlMutex, NULL);

  int64_t now = FUNC5();
  for (int i = 0; i < FUNC4(wheels); i++) {
    time_wheel_t* wheel = wheels + i;
    if (FUNC2(&wheel->mutex, NULL) != 0) {
      FUNC8("failed to create the mutex for wheel, reason:%s", FUNC3(errno));
      return;
    }
    wheel->nextScanAt = now + wheel->resolution;
    wheel->index = 0;
    wheel->slots = (tmr_obj_t**)FUNC0(wheel->size, sizeof(tmr_obj_t*));
    if (wheel->slots == NULL) {
      FUNC8("failed to allocate wheel slots");
      return;
    }
    timerMap.size += wheel->size;
  }

  timerMap.count = 0;
  timerMap.slots = (timer_list_t*)FUNC0(timerMap.size, sizeof(timer_list_t));
  if (timerMap.slots == NULL) {
    FUNC8("failed to allocate hash map");
    return;
  }

  tmrQhandle = FUNC6(10000, taosTmrThreads, "tmr");
  FUNC7(taosTimerLoopFunc, MSECONDS_PER_TICK);

  FUNC9("timer module is initialized, number of threads: %d", taosTmrThreads);
}