
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int colfx ;
struct TYPE_10__ {int control; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_9__ {int hdr; int v; int u; int enable; int member_3; int member_2; int member_1; TYPE_1__ member_0; } ;
struct TYPE_8__ {int v; int u; int enable; } ;
typedef TYPE_2__ MMAL_PARAM_COLOURFX_T ;
typedef TYPE_3__ MMAL_PARAMETER_COLOURFX_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_COLOUR_EFFECT ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_colourFX(MMAL_COMPONENT_T *camera, const MMAL_PARAM_COLOURFX_T *colourFX)
{
   MMAL_PARAMETER_COLOURFX_T colfx = {{MMAL_PARAMETER_COLOUR_EFFECT,sizeof(colfx)}, 0, 0, 0};

   if (!camera)
      return 1;

   colfx.enable = colourFX->enable;
   colfx.u = colourFX->u;
   colfx.v = colourFX->v;

   return mmal_status_to_int(mmal_port_parameter_set(camera->control, &colfx.hdr));

}
