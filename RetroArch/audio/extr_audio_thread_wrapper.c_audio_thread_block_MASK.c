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
struct TYPE_3__ {int stopped; int stopped_ack; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ audio_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(audio_thread_t *thr)
{
   if (!thr)
      return;

   if (thr->stopped)
      return;

   FUNC2(thr->lock);
   thr->stopped_ack = false;
   thr->stopped = true;
   FUNC0(thr->cond);

   /* Wait until audio driver actually goes to sleep. */
   while (!thr->stopped_ack)
      FUNC1(thr->cond, thr->lock);

   FUNC3(thr->lock);
}