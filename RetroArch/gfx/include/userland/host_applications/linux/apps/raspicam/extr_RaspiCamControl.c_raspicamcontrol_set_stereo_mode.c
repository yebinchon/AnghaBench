
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stereo ;
struct TYPE_4__ {int member_1; int member_0; } ;
struct TYPE_5__ {scalar_t__ member_1; scalar_t__ mode; int hdr; int swap_eyes; int decimate; int member_3; int member_2; TYPE_1__ member_0; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_STEREOSCOPIC_MODE_T ;


 int MMAL_FALSE ;
 int MMAL_PARAMETER_STEREOSCOPIC_MODE ;
 scalar_t__ MMAL_STEREOSCOPIC_MODE_NONE ;
 int mmal_port_parameter_set (int *,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_stereo_mode(MMAL_PORT_T *port, MMAL_PARAMETER_STEREOSCOPIC_MODE_T *stereo_mode)
{
   MMAL_PARAMETER_STEREOSCOPIC_MODE_T stereo = { {MMAL_PARAMETER_STEREOSCOPIC_MODE, sizeof(stereo)},
      MMAL_STEREOSCOPIC_MODE_NONE, MMAL_FALSE, MMAL_FALSE
   };
   if (stereo_mode->mode != MMAL_STEREOSCOPIC_MODE_NONE)
   {
      stereo.mode = stereo_mode->mode;
      stereo.decimate = stereo_mode->decimate;
      stereo.swap_eyes = stereo_mode->swap_eyes;
   }
   return mmal_status_to_int(mmal_port_parameter_set(port, &stereo.hdr));
}
