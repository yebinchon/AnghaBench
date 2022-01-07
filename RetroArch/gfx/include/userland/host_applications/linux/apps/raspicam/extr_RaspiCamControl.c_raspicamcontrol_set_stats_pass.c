
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int control; } ;
typedef TYPE_1__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_CAPTURE_STATS_PASS ;
 int mmal_port_parameter_set_boolean (int ,int ,int) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_stats_pass(MMAL_COMPONENT_T *camera, int stats_pass)
{
   if (!camera)
      return 1;

   return mmal_status_to_int(mmal_port_parameter_set_boolean(camera->control, MMAL_PARAMETER_CAPTURE_STATS_PASS, stats_pass));
}
