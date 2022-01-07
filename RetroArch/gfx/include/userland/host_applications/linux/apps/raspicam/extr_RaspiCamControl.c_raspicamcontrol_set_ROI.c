
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int control; } ;
struct TYPE_9__ {int x; int y; int width; int height; } ;
struct TYPE_8__ {int member_1; int member_0; } ;
struct TYPE_11__ {int hdr; TYPE_2__ rect; TYPE_1__ member_0; } ;
struct TYPE_10__ {int x; int y; int w; int h; } ;
typedef TYPE_3__ PARAM_FLOAT_RECT_T ;
typedef TYPE_4__ MMAL_PARAMETER_INPUT_CROP_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_INPUT_CROP ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_ROI(MMAL_COMPONENT_T *camera, PARAM_FLOAT_RECT_T rect)
{
   MMAL_PARAMETER_INPUT_CROP_T crop = {{MMAL_PARAMETER_INPUT_CROP, sizeof(MMAL_PARAMETER_INPUT_CROP_T)}};

   crop.rect.x = (65536 * rect.x);
   crop.rect.y = (65536 * rect.y);
   crop.rect.width = (65536 * rect.w);
   crop.rect.height = (65536 * rect.h);

   return mmal_status_to_int(mmal_port_parameter_set(camera->control, &crop.hdr));
}
