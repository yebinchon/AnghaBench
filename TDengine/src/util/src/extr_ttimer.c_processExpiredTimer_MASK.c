#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ id; int /*<<< orphan*/  param; int /*<<< orphan*/  (* fp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* ctrl; int /*<<< orphan*/  state; int /*<<< orphan*/  executedBy; } ;
typedef  TYPE_2__ tmr_obj_t ;
typedef  int /*<<< orphan*/  tmr_h ;
struct TYPE_4__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_STATE_EXPIRED ; 
 int /*<<< orphan*/  TIMER_STATE_STOPPED ; 
 scalar_t__ TIMER_STATE_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void* handle, void* arg) {
  tmr_obj_t* timer = (tmr_obj_t*)handle;
  timer->executedBy = FUNC4();
  uint8_t state = FUNC1(&timer->state, TIMER_STATE_WAITING, TIMER_STATE_EXPIRED);
  if (state == TIMER_STATE_WAITING) {
    const char* fmt = "%s timer[id=%lld, fp=%p, param=%p] execution start.";
    FUNC6(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);

    (*timer->fp)(timer->param, (tmr_h)timer->id);
    FUNC0(&timer->state, TIMER_STATE_STOPPED);

    fmt = "%s timer[id=%lld, fp=%p, param=%p] execution end.";
    FUNC6(fmt, timer->ctrl->label, timer->id, timer->fp, timer->param);
  }
  FUNC2(timer->id);
  FUNC5(timer);
}