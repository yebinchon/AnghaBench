
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int param ;
struct TYPE_15__ {int control; } ;
struct TYPE_10__ {unsigned int num; int den; } ;
struct TYPE_9__ {unsigned int num; int den; } ;
struct TYPE_13__ {int member_1; int member_0; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {int member_1; int member_0; } ;
struct TYPE_14__ {int hdr; TYPE_2__ b_gain; TYPE_1__ r_gain; TYPE_5__ member_2; TYPE_4__ member_1; TYPE_3__ member_0; } ;
typedef TYPE_6__ MMAL_PARAMETER_AWB_GAINS_T ;
typedef TYPE_7__ MMAL_COMPONENT_T ;


 int MMAL_PARAMETER_CUSTOM_AWB_GAINS ;
 int mmal_port_parameter_set (int ,int *) ;
 int mmal_status_to_int (int ) ;

int raspicamcontrol_set_awb_gains(MMAL_COMPONENT_T *camera, float r_gain, float b_gain)
{
   MMAL_PARAMETER_AWB_GAINS_T param = {{MMAL_PARAMETER_CUSTOM_AWB_GAINS,sizeof(param)}, {0,0}, {0,0}};

   if (!camera)
      return 1;

   if (!r_gain || !b_gain)
      return 0;

   param.r_gain.num = (unsigned int)(r_gain * 65536);
   param.b_gain.num = (unsigned int)(b_gain * 65536);
   param.r_gain.den = param.b_gain.den = 65536;
   return mmal_status_to_int(mmal_port_parameter_set(camera->control, &param.hdr));
}
