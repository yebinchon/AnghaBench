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
struct TYPE_4__ {int created; int /*<<< orphan*/  video_output; scalar_t__ connection; int /*<<< orphan*/  thread; int /*<<< orphan*/  sema; int /*<<< orphan*/  timer; int /*<<< orphan*/  wd_timer; } ;
typedef  TYPE_1__ SVP_T ;

/* Variables and functions */
 int SVP_CREATED_THREAD ; 
 int /*<<< orphan*/  SVP_STOP_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(SVP_T *svp)
{
   FUNC5(&svp->wd_timer);
   FUNC5(&svp->timer);

   /* Stop worker thread */
   if (svp->created & SVP_CREATED_THREAD)
   {
      FUNC2(svp, SVP_STOP_USER);
      FUNC3(&svp->sema);
      FUNC4(&svp->thread, NULL);
      svp->created &= ~SVP_CREATED_THREAD;
   }

   if (svp->connection)
   {
      FUNC0(svp->connection);
   }

   FUNC1(svp->video_output);
}