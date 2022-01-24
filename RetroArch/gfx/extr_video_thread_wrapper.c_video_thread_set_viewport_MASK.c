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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  driver_data; TYPE_1__* driver; } ;
typedef  TYPE_2__ thread_video_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_viewport ) (int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 

__attribute__((used)) static void FUNC3(void *data, unsigned width,
      unsigned height, bool force_full, bool video_allow_rotate)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr)
      return;

   FUNC0(thr->lock);

    if (thr->driver && thr->driver->set_viewport)
        thr->driver->set_viewport(thr->driver_data, width, height,
                                  force_full, video_allow_rotate);

   FUNC1(thr->lock);
}