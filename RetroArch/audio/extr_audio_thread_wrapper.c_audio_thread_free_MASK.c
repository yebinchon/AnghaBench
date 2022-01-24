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
struct TYPE_3__ {int stopped; int alive; scalar_t__ cond; scalar_t__ lock; scalar_t__ thread; } ;
typedef  TYPE_1__ audio_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(void *data)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return;

   if (thr->thread)
   {
      FUNC4(thr->lock);
      thr->stopped = false;
      thr->alive   = false;
      FUNC2(thr->cond);
      FUNC5(thr->lock);

      FUNC6(thr->thread);
   }

   if (thr->lock)
      FUNC3(thr->lock);
   if (thr->cond)
      FUNC1(thr->cond);
   FUNC0(thr);
}