#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ tmr_obj_t ;
typedef  int /*<<< orphan*/  tmr_h ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_STATE_CANCELED ; 
 scalar_t__ TIMER_STATE_WAITING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC2 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,uintptr_t) ; 

bool FUNC5(tmr_h timerId) {
  uintptr_t id = (uintptr_t)timerId;

  tmr_obj_t* timer = FUNC2(id);
  if (timer == NULL) {
    FUNC4("timer[id=%lld] does not exist", id);
    return false;
  }

  uint8_t state = FUNC0(&timer->state, TIMER_STATE_WAITING, TIMER_STATE_CANCELED);
  FUNC1(timer, state);
  FUNC3(timer);

  return state == TIMER_STATE_WAITING;
}