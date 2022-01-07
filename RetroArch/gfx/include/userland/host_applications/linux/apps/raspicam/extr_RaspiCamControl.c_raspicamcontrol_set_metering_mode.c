
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int meter_mode ;
struct TYPE_7__ {int control; } ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {int hdr; int member_1; TYPE_1__ member_0; } ;
typedef int MMAL_PARAM_EXPOSUREMETERINGMODE_T ;
typedef TYPE_2__ MMAL_PARAMETER_EXPOSUREMETERINGMODE_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_EXP_METERING_MODE ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_metering_mode(MMAL_COMPONENT_T *camera, MMAL_PARAM_EXPOSUREMETERINGMODE_T m_mode )
{
   MMAL_PARAMETER_EXPOSUREMETERINGMODE_T meter_mode = {{MMAL_PARAMETER_EXP_METERING_MODE,sizeof(meter_mode)},
      m_mode
   };
   if (!camera)
      return 1;

   return mmal_status_to_int(mmal_port_parameter_set(camera->control, &meter_mode.hdr));
}
