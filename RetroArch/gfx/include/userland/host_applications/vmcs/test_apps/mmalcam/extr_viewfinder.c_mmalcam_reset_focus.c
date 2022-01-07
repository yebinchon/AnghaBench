
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int focus ;
struct TYPE_7__ {int control; } ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {int hdr; int value; int member_1; TYPE_1__ member_0; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PARAM_FOCUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_FOCUS_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_BOOL_T ;


 int LOG_ERROR (char*,scalar_t__,...) ;
 int MMAL_FALSE ;
 int MMAL_PARAMETER_FOCUS ;
 int MMAL_PARAM_FOCUS_FIXED_HYPERFOCAL ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_TRUE ;
 scalar_t__ mmal_port_parameter_set (int ,int *) ;

__attribute__((used)) static MMAL_BOOL_T mmalcam_reset_focus(MMAL_COMPONENT_T *camera, MMAL_PARAM_FOCUS_T focus_setting)
{
   MMAL_PARAMETER_FOCUS_T focus = {{MMAL_PARAMETER_FOCUS, sizeof(focus)},MMAL_PARAM_FOCUS_FIXED_HYPERFOCAL};
   MMAL_STATUS_T result;

   result = mmal_port_parameter_set(camera->control, &focus.hdr);
   if (result != MMAL_SUCCESS)
   {
      LOG_ERROR("Failed to set focus to HYPERFOCAL, result %d", result);
      return MMAL_FALSE;
   }
   focus.value = focus_setting;
   result = mmal_port_parameter_set(camera->control, &focus.hdr);
   if (result != MMAL_SUCCESS)
   {
      LOG_ERROR("Failed to set focus to %d, result %d", focus_setting, result);
      return MMAL_FALSE;
   }
   return MMAL_TRUE;
}
