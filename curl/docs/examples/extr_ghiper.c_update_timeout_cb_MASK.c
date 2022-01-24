#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer_event; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,long,long) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  timer_cb ; 

__attribute__((used)) static int FUNC2(CURLM *multi, long timeout_ms, void *userp)
{
  struct timeval timeout;
  GlobalInfo *g = (GlobalInfo *)userp;
  timeout.tv_sec = timeout_ms/1000;
  timeout.tv_usec = (timeout_ms%1000)*1000;

  FUNC0("*** update_timeout_cb %ld => %ld:%ld ***\n",
          timeout_ms, timeout.tv_sec, timeout.tv_usec);

  /*
   * if timeout_ms is -1, just delete the timer
   *
   * For other values of timeout_ms, this should set or *update* the timer to
   * the new value
   */
  if(timeout_ms >= 0)
    g->timer_event = FUNC1(timeout_ms, timer_cb, g);
  return 0;
}