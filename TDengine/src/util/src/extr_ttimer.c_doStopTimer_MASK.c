#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_6__ {scalar_t__ executedBy; int /*<<< orphan*/  param; int /*<<< orphan*/  fp; int /*<<< orphan*/  id; TYPE_1__* ctrl; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ tmr_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 scalar_t__ TIMER_STATE_EXPIRED ; 
 scalar_t__ TIMER_STATE_STOPPED ; 
 scalar_t__ TIMER_STATE_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(tmr_obj_t* timer, uint8_t state) {
  bool reusable = false;

  if (state == TIMER_STATE_WAITING) {
    if (FUNC2(timer)) {
      FUNC3(timer->id);
      // only safe to reuse the timer when timer is removed from the wheel.
      // we cannot guarantee the thread safety of the timr in all other cases.
      reusable = true;
    }
    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] is cancelled.";
    FUNC6(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  } else if (state != TIMER_STATE_EXPIRED) {
    // timer already stopped or cancelled, has nothing to do in this case
  } else if (timer->executedBy == FUNC5()) {
    // taosTmrReset is called in the timer callback, should do nothing in this
    // case to avoid dead lock. note taosTmrReset must be the last statement
    // of the callback funtion, will be a bug otherwise.
  } else {
    FUNC0(timer->executedBy != FUNC5());

    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] fired, waiting...";
    FUNC6(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);

    for (int i = 1; FUNC1(&timer->state) != TIMER_STATE_STOPPED; i++) {
      if (i % 1000 == 0) {
        FUNC4();
      }
    }

    fmt = "%s timer[id=%lld, fp=%p, param=%p] stopped.";
    FUNC6(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  }

  return reusable;
}