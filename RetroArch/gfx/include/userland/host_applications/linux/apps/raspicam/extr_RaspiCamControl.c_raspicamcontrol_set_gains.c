
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int control; } ;
struct TYPE_5__ {int member_1; unsigned int num; int member_0; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_RATIONAL_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_ANALOG_GAIN ;
 int MMAL_PARAMETER_DIGITAL_GAIN ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_parameter_set_rational (int ,int ,TYPE_1__) ;
 int mmal_status_to_int (scalar_t__) ;

int raspicamcontrol_set_gains(MMAL_COMPONENT_T *camera, float analog, float digital)
{
   MMAL_RATIONAL_T rational = {0,65536};
   MMAL_STATUS_T status;

   if (!camera)
      return 1;

   rational.num = (unsigned int)(analog * 65536);
   status = mmal_port_parameter_set_rational(camera->control, MMAL_PARAMETER_ANALOG_GAIN, rational);
   if (status != MMAL_SUCCESS)
      return mmal_status_to_int(status);

   rational.num = (unsigned int)(digital * 65536);
   status = mmal_port_parameter_set_rational(camera->control, MMAL_PARAMETER_DIGITAL_GAIN, rational);
   return mmal_status_to_int(status);
}
