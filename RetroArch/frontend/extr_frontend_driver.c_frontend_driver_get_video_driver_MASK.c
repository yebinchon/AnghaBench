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
struct video_driver {int dummy; } ;
struct TYPE_3__ {struct video_driver const* (* get_video_driver ) () ;} ;
typedef  TYPE_1__ frontend_ctx_driver_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 struct video_driver const* FUNC1 () ; 

const struct video_driver *FUNC2(void)
{
   frontend_ctx_driver_t *frontend = FUNC0();
   if (!frontend || !frontend->get_video_driver)
      return NULL;
   return frontend->get_video_driver();
}