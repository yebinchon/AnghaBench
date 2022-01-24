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
typedef  int /*<<< orphan*/  focus ;
struct TYPE_7__ {int /*<<< orphan*/  control; } ;
struct TYPE_5__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  value; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PARAM_FOCUS_T ;
typedef  TYPE_2__ MMAL_PARAMETER_FOCUS_T ;
typedef  TYPE_3__ MMAL_COMPONENT_T ;
typedef  int /*<<< orphan*/  MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_FOCUS ; 
 int /*<<< orphan*/  MMAL_PARAM_FOCUS_FIXED_HYPERFOCAL ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC2(MMAL_COMPONENT_T *camera, MMAL_PARAM_FOCUS_T focus_setting)
{
   MMAL_PARAMETER_FOCUS_T focus = {{MMAL_PARAMETER_FOCUS, sizeof(focus)},MMAL_PARAM_FOCUS_FIXED_HYPERFOCAL};
   MMAL_STATUS_T result;

   result = FUNC1(camera->control, &focus.hdr);
   if (result != MMAL_SUCCESS)
   {
      FUNC0("Failed to set focus to HYPERFOCAL, result %d", result);
      return MMAL_FALSE;
   }
   focus.value = focus_setting;
   result = FUNC1(camera->control, &focus.hdr);
   if (result != MMAL_SUCCESS)
   {
      FUNC0("Failed to set focus to %d, result %d", focus_setting, result);
      return MMAL_FALSE;
   }
   return MMAL_TRUE;
}