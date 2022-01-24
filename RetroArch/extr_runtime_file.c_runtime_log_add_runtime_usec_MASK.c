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
struct TYPE_4__ {int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutes; int /*<<< orphan*/  hours; } ;
struct TYPE_5__ {TYPE_1__ runtime; } ;
typedef  TYPE_2__ runtime_log_t ;
typedef  scalar_t__ retro_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(runtime_log_t *runtime_log, retro_time_t usec)
{
   retro_time_t usec_old;
   
   if (!runtime_log)
      return;
   
   FUNC0(
         runtime_log->runtime.hours, runtime_log->runtime.minutes, runtime_log->runtime.seconds,
         &usec_old);
   
   FUNC1(usec_old + usec,
         &runtime_log->runtime.hours, &runtime_log->runtime.minutes, &runtime_log->runtime.seconds);
}