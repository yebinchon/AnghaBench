
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
struct TYPE_4__ {int hdr; int member_1; TYPE_1__ member_0; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_CAMERA_STC_MODE_T ;
typedef int MMAL_CAMERA_STC_MODE_T ;


 int MMAL_PARAMETER_USE_STC ;
 int mmal_port_parameter_set (int *,int *) ;

MMAL_STATUS_T mmal_util_camera_use_stc_timestamp(MMAL_PORT_T *port, MMAL_CAMERA_STC_MODE_T mode)
{
   MMAL_PARAMETER_CAMERA_STC_MODE_T param =
      {{MMAL_PARAMETER_USE_STC, sizeof(MMAL_PARAMETER_CAMERA_STC_MODE_T)},mode};
   return mmal_port_parameter_set(port, &param.hdr);
}
