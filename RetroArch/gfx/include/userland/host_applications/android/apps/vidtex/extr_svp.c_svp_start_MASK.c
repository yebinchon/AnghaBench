#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_10__ {unsigned int duration_ms; } ;
struct TYPE_9__ {scalar_t__ video_frame_count; } ;
struct TYPE_11__ {int /*<<< orphan*/  wd_timer; int /*<<< orphan*/  timer; TYPE_2__ opts; scalar_t__ camera; int /*<<< orphan*/  created; int /*<<< orphan*/  thread; TYPE_1__ stats; int /*<<< orphan*/  video_output; scalar_t__ connection; } ;
typedef  TYPE_3__ SVP_T ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 unsigned int SVP_CAMERA_DURATION_MS ; 
 int /*<<< orphan*/  SVP_CREATED_THREAD ; 
 unsigned int SVP_WATCHDOG_TIMEOUT_MS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  svp_bh_output_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  svp_worker ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC7(SVP_T *svp)
{
   MMAL_STATUS_T st;
   VCOS_STATUS_T vst;

   /* Ensure SVP is stopped first */
   FUNC4(svp);

   /* Reset the worker thread stop status, before enabling ports that might trigger a stop */
   FUNC3(svp);

   if (svp->connection)
   {
      /* Enable reader->decoder connection */
      st = FUNC1(svp->connection);
      FUNC0(st, "Failed to create connection");
   }

   /* Enable video output port */
   st = FUNC2(svp, svp->video_output, svp_bh_output_cb);
   FUNC0(st, "Failed to enable output port");

   /* Reset stats */
   svp->stats.video_frame_count = 0;

   /* Create worker thread */
   vst = FUNC5(&svp->thread, "svp-worker", NULL, svp_worker, svp);
   FUNC0((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create connection");

   svp->created |= SVP_CREATED_THREAD;

   /* Set timer */
   if (svp->camera)
   {
      unsigned ms = svp->opts.duration_ms;
      FUNC6(&svp->timer, ((ms == 0) ? SVP_CAMERA_DURATION_MS : ms));
   }

   /* Start watchdog timer */
   FUNC6(&svp->wd_timer, SVP_WATCHDOG_TIMEOUT_MS);

   return 0;

error:
   return -1;
}