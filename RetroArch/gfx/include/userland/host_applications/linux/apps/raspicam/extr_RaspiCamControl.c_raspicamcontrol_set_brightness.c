
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int control; } ;
struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_BRIGHTNESS ;
 int mmal_port_parameter_set_rational (int ,int ,TYPE_1__) ;
 int mmal_status_to_int (int ) ;
 int vcos_log_error (char*) ;

int raspicamcontrol_set_brightness(MMAL_COMPONENT_T *camera, int brightness)
{
   int ret = 0;

   if (!camera)
      return 1;

   if (brightness >= 0 && brightness <= 100)
   {
      MMAL_RATIONAL_T value = {brightness, 100};
      ret = mmal_status_to_int(mmal_port_parameter_set_rational(camera->control, MMAL_PARAMETER_BRIGHTNESS, value));
   }
   else
   {
      vcos_log_error("Invalid brightness value");
      ret = 1;
   }

   return ret;
}
