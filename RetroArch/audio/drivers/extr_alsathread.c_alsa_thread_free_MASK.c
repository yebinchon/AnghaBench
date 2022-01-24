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
struct TYPE_3__ {int thread_dead; scalar_t__ pcm; scalar_t__ cond_lock; scalar_t__ fifo_lock; scalar_t__ cond; scalar_t__ buffer; scalar_t__ worker_thread; } ;
typedef  TYPE_1__ alsa_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(void *data)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;

   if (alsa)
   {
      if (alsa->worker_thread)
      {
         FUNC4(alsa->cond_lock);
         alsa->thread_dead = true;
         FUNC5(alsa->cond_lock);
         FUNC8(alsa->worker_thread);
      }
      if (alsa->buffer)
         FUNC0(alsa->buffer);
      if (alsa->cond)
         FUNC2(alsa->cond);
      if (alsa->fifo_lock)
         FUNC3(alsa->fifo_lock);
      if (alsa->cond_lock)
         FUNC3(alsa->cond_lock);
      if (alsa->pcm)
      {
         FUNC7(alsa->pcm);
         FUNC6(alsa->pcm);
      }
      FUNC1(alsa);
   }
}