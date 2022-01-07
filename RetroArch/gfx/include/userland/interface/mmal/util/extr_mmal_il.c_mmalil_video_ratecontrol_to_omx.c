
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmal; int omx; } ;
typedef int OMX_VIDEO_CONTROLRATETYPE ;
typedef scalar_t__ MMAL_VIDEO_RATECONTROL_T ;


 scalar_t__ MMAL_VIDEO_RATECONTROL_DUMMY ;
 TYPE_1__* mmal_omx_video_ratecontrol_table ;

OMX_VIDEO_CONTROLRATETYPE mmalil_video_ratecontrol_to_omx(MMAL_VIDEO_RATECONTROL_T mmal)
{
   unsigned int i;
   for(i = 0; mmal_omx_video_ratecontrol_table[i].mmal != MMAL_VIDEO_RATECONTROL_DUMMY; i++)
      if(mmal_omx_video_ratecontrol_table[i].mmal == mmal) break;
   return mmal_omx_video_ratecontrol_table[i].omx;
}
