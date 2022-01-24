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
struct TYPE_3__ {int /*<<< orphan*/ * output; } ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAMETER_ROTATION ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 

int FUNC2(MMAL_COMPONENT_T *camera, int rotation)
{
   int ret;
   int my_rotation = ((rotation % 360 ) / 90) * 90;

   ret = FUNC0(camera->output[0], MMAL_PARAMETER_ROTATION, my_rotation);
   FUNC0(camera->output[1], MMAL_PARAMETER_ROTATION, my_rotation);
   FUNC0(camera->output[2], MMAL_PARAMETER_ROTATION, my_rotation);

   return FUNC1(ret);
}