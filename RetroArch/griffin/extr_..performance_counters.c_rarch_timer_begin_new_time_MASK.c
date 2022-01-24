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
typedef  int uint64_t ;
struct TYPE_3__ {int timeout_us; scalar_t__ current; scalar_t__ timeout_end; } ;
typedef  TYPE_1__ rarch_timer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

void FUNC1(rarch_timer_t *timer, uint64_t sec)
{
   if (!timer)
      return;
   timer->timeout_us = sec * 1000000;
   timer->current = FUNC0();
   timer->timeout_end = timer->current + timer->timeout_us;
}