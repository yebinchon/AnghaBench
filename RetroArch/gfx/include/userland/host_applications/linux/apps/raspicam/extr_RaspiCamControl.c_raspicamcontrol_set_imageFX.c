
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int imgFX ;
struct TYPE_7__ {int control; } ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_6__ {int hdr; int member_1; TYPE_1__ member_0; } ;
typedef int MMAL_PARAM_IMAGEFX_T ;
typedef TYPE_2__ MMAL_PARAMETER_IMAGEFX_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_IMAGE_EFFECT ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_imageFX(MMAL_COMPONENT_T *camera, MMAL_PARAM_IMAGEFX_T imageFX)
{
   MMAL_PARAMETER_IMAGEFX_T imgFX = {{MMAL_PARAMETER_IMAGE_EFFECT,sizeof(imgFX)}, imageFX};

   if (!camera)
      return 1;

   return mmal_status_to_int(mmal_port_parameter_set(camera->control, &imgFX.hdr));
}
