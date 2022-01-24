#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  control; } ;
struct TYPE_5__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  TYPE_2__ MMAL_PARAMETER_DRC_T ;
typedef  int /*<<< orphan*/  MMAL_PARAMETER_DRC_STRENGTH_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(MMAL_COMPONENT_T *camera, MMAL_PARAMETER_DRC_STRENGTH_T strength)
{
   MMAL_PARAMETER_DRC_T drc = {{MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION, sizeof(MMAL_PARAMETER_DRC_T)}, strength};

   if (!camera)
      return 1;

   return FUNC1(FUNC0(camera->control, &drc.hdr));
}