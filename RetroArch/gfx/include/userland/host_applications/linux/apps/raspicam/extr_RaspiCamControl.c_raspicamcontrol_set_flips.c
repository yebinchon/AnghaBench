
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * output; } ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {int hdr; int value; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_2__ MMAL_PARAMETER_MIRROR_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_MIRROR ;
 int MMAL_PARAM_MIRROR_BOTH ;
 int MMAL_PARAM_MIRROR_HORIZONTAL ;
 int MMAL_PARAM_MIRROR_NONE ;
 int MMAL_PARAM_MIRROR_VERTICAL ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_flips(MMAL_COMPONENT_T *camera, int hflip, int vflip)
{
   MMAL_PARAMETER_MIRROR_T mirror = {{MMAL_PARAMETER_MIRROR, sizeof(MMAL_PARAMETER_MIRROR_T)}, MMAL_PARAM_MIRROR_NONE};

   if (hflip && vflip)
      mirror.value = MMAL_PARAM_MIRROR_BOTH;
   else if (hflip)
      mirror.value = MMAL_PARAM_MIRROR_HORIZONTAL;
   else if (vflip)
      mirror.value = MMAL_PARAM_MIRROR_VERTICAL;

   mmal_port_parameter_set(camera->output[0], &mirror.hdr);
   mmal_port_parameter_set(camera->output[1], &mirror.hdr);
   return mmal_status_to_int(mmal_port_parameter_set(camera->output[2], &mirror.hdr));
}
