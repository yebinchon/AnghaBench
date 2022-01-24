#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* device; unsigned int out_rate; unsigned int* new_rate; unsigned int latency; unsigned int block_frames; int alive; int stopped; scalar_t__ inited; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  thread; int /*<<< orphan*/  const* driver; } ;
typedef  TYPE_1__ audio_thread_t ;
typedef  int /*<<< orphan*/  audio_driver_t ;

/* Variables and functions */
 int /*<<< orphan*/  audio_thread ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  audio_thread_loop ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

bool FUNC8(const audio_driver_t **out_driver,
      void **out_data, const char *device, unsigned audio_out_rate,
      unsigned *new_rate, unsigned latency,
      unsigned block_frames, const audio_driver_t *drv)
{
   audio_thread_t *thr = (audio_thread_t*)FUNC1(1, sizeof(*thr));
   if (!thr)
      return false;

   thr->driver         = (const audio_driver_t*)drv;
   thr->device         = device;
   thr->out_rate       = audio_out_rate;
   thr->new_rate       = new_rate;
   thr->latency        = latency;
   thr->block_frames   = block_frames;

   if (!(thr->cond     = FUNC2()))
      goto error;
   if (!(thr->lock     = FUNC5()))
      goto error;

   thr->alive          = true;
   thr->stopped        = true;

   if (!(thr->thread   = FUNC7(audio_thread_loop, thr)))
      goto error;

   /* Wait until thread has initialized (or failed) the driver. */
   FUNC4(thr->lock);
   while (!thr->inited)
      FUNC3(thr->cond, thr->lock);
   FUNC6(thr->lock);

   if (thr->inited < 0) /* Thread failed. */
      goto error;

   *out_driver         = &audio_thread;
   *out_data           = thr;
   return true;

error:
   *out_driver         = NULL;
   *out_data           = NULL;
   FUNC0(thr);
   return false;
}