#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  control; } ;
struct TYPE_5__ {int member_0; int member_1; } ;
typedef  TYPE_1__ MMAL_RATIONAL_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAMETER_SHARPNESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(MMAL_COMPONENT_T *camera, int sharpness)
{
   int ret = 0;

   if (!camera)
      return 1;

   if (sharpness >= -100 && sharpness <= 100)
   {
      MMAL_RATIONAL_T value = {sharpness, 100};
      ret = FUNC1(FUNC0(camera->control, MMAL_PARAMETER_SHARPNESS, value));
   }
   else
   {
      FUNC2("Invalid sharpness value");
      ret = 1;
   }

   return ret;
}