#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long tv_sec; long tv_nsec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct itimerspec {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfd; } ;
typedef  TYPE_3__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct itimerspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(CURLM *multi, long timeout_ms, GlobalInfo *g)
{
  struct itimerspec its;

  FUNC0(MSG_OUT, "multi_timer_cb: Setting timeout to %ld ms\n", timeout_ms);

  if(timeout_ms > 0) {
    its.it_interval.tv_sec = 1;
    its.it_interval.tv_nsec = 0;
    its.it_value.tv_sec = timeout_ms / 1000;
    its.it_value.tv_nsec = (timeout_ms % 1000) * 1000 * 1000;
  }
  else if(timeout_ms == 0) {
    /* libcurl wants us to timeout now, however setting both fields of
     * new_value.it_value to zero disarms the timer. The closest we can
     * do is to schedule the timer to fire in 1 ns. */
    its.it_interval.tv_sec = 1;
    its.it_interval.tv_nsec = 0;
    its.it_value.tv_sec = 0;
    its.it_value.tv_nsec = 1;
  }
  else {
    FUNC1(&its, 0, sizeof(struct itimerspec));
  }

  FUNC2(g->tfd, /*flags=*/0, &its, NULL);
  return 0;
}