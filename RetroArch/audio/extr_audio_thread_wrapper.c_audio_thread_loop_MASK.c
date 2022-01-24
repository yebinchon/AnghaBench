#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int inited; int stopped_ack; scalar_t__ driver_data; TYPE_1__* driver; int /*<<< orphan*/  lock; int /*<<< orphan*/  is_shutdown; int /*<<< orphan*/  cond; scalar_t__ stopped; int /*<<< orphan*/  alive; int /*<<< orphan*/  use_float; int /*<<< orphan*/  new_rate; int /*<<< orphan*/  block_frames; int /*<<< orphan*/  latency; int /*<<< orphan*/  out_rate; int /*<<< orphan*/  device; } ;
typedef  TYPE_2__ audio_thread_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;int /*<<< orphan*/  (* start ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop ) (scalar_t__) ;int /*<<< orphan*/  (* use_float ) (scalar_t__) ;scalar_t__ (* init ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(void *data)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return;

   thr->driver_data   = thr->driver->init(
         thr->device, thr->out_rate, thr->latency,
         thr->block_frames, thr->new_rate);
   FUNC3(thr->lock);
   thr->inited        = thr->driver_data ? 1 : -1;
   if (thr->inited > 0 && thr->driver->use_float)
      thr->use_float  = thr->driver->use_float(thr->driver_data);
   FUNC1(thr->cond);
   FUNC4(thr->lock);

   if (thr->inited < 0)
      return;

   /* Wait until we start to avoid calling
    * stop immediately after initialization. */
   FUNC3(thr->lock);
   while (thr->stopped)
      FUNC2(thr->cond, thr->lock);
   FUNC4(thr->lock);

   for (;;)
   {
      FUNC3(thr->lock);

      if (!thr->alive)
      {
         FUNC1(thr->cond);
         thr->stopped_ack = true;
         FUNC4(thr->lock);
         break;
      }

      if (thr->stopped)
      {
         thr->driver->stop(thr->driver_data);
         while (thr->stopped)
         {
            /* If we stop right after start, 
             * we might not be able to properly ack.
             * Signal in the loop instead. */
            thr->stopped_ack = true;
            FUNC1(thr->cond);

            FUNC2(thr->cond, thr->lock);
         }
         thr->driver->start(thr->driver_data, thr->is_shutdown);
      }

      FUNC4(thr->lock);
      FUNC0();
   }

   thr->driver->free(thr->driver_data);
}