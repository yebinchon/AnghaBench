#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* stop_cb ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  sema; TYPE_1__* out_pool; TYPE_3__ callbacks; TYPE_4__* video_output; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ SVP_T ;
typedef  TYPE_3__ SVP_CALLBACKS_T ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
   SVP_T *svp = arg;
   MMAL_PORT_T *video_output = svp->video_output;
   SVP_CALLBACKS_T *callbacks = &svp->callbacks;
   MMAL_BUFFER_HEADER_T *buf;
   MMAL_STATUS_T st;
   uint32_t stop;

   while (FUNC5(svp) == 0)
   {
      /* Send empty buffers to video decoder output port */
      while ((buf = FUNC3(svp->out_pool->queue)) != NULL)
      {
         st = FUNC2(video_output, buf);
         if (st != MMAL_SUCCESS)
         {
            FUNC0("Failed to send buffer to %s", video_output->name);
         }
      }

      /* Process returned buffers */
      FUNC6(svp);

      /* Block for buffer release */
      FUNC7(&svp->sema);
   }

   /* Might have the last few buffers queued */
   FUNC6(svp);

   /* Notify caller if we stopped unexpectedly */
   stop = FUNC5(svp);
   FUNC1("Worker thread exiting: stop=0x%x", (unsigned)stop);
   callbacks->stop_cb(callbacks->ctx, stop);

   return NULL;
}