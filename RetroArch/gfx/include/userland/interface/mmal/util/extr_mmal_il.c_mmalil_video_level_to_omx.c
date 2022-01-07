
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ mmal; int omx; } ;
typedef int OMX_U32 ;


 scalar_t__ MMAL_VIDEO_LEVEL_DUMMY ;
 TYPE_1__* mmal_omx_video_level_table ;

OMX_U32 mmalil_video_level_to_omx(uint32_t level)
{
   unsigned int i;
   for(i = 0; mmal_omx_video_level_table[i].mmal != MMAL_VIDEO_LEVEL_DUMMY; i++)
      if(mmal_omx_video_level_table[i].mmal == level) break;
   return mmal_omx_video_level_table[i].omx;
}
