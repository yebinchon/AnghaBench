#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int created; int /*<<< orphan*/  sema; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timer; int /*<<< orphan*/  wd_timer; scalar_t__ queue; scalar_t__ out_pool; scalar_t__ connection; int /*<<< orphan*/ * camera; int /*<<< orphan*/ * video_decode; int /*<<< orphan*/ * reader; } ;
typedef  TYPE_1__ SVP_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int SVP_CREATED_MUTEX ; 
 int SVP_CREATED_SEM ; 
 int SVP_CREATED_TIMER ; 
 int SVP_CREATED_WD_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(SVP_T *svp)
{
   if (svp)
   {
      MMAL_COMPONENT_T *components[] = { svp->reader, svp->video_decode, svp->camera };
      MMAL_COMPONENT_T **comp;

      /* Stop thread, disable connection and components */
      FUNC5(svp);

      for (comp = components; comp < components + FUNC6(components); comp++)
      {
         FUNC1(*comp);
      }

      /* Destroy connection + components */
      if (svp->connection)
      {
         FUNC2(svp->connection);
      }

      for (comp = components; comp < components + FUNC6(components); comp++)
      {
         FUNC0(*comp);
      }

      /* Free remaining resources */
      if (svp->out_pool)
      {
         FUNC3(svp->out_pool);
      }

      if (svp->queue)
      {
         FUNC4(svp->queue);
      }

      if (svp->created & SVP_CREATED_WD_TIMER)
      {
         FUNC10(&svp->wd_timer);
      }

      if (svp->created & SVP_CREATED_TIMER)
      {
         FUNC10(&svp->timer);
      }

      if (svp->created & SVP_CREATED_MUTEX)
      {
         FUNC8(&svp->mutex);
      }

      if (svp->created & SVP_CREATED_SEM)
      {
         FUNC9(&svp->sema);
      }

      FUNC7(svp);
   }
}