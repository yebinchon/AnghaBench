
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ mmal; scalar_t__ omx; scalar_t__ omx_coding; } ;
typedef scalar_t__ OMX_VIDEO_CODINGTYPE ;
typedef scalar_t__ OMX_U32 ;


 scalar_t__ MMAL_VIDEO_LEVEL_DUMMY ;
 TYPE_1__* mmal_omx_video_level_table ;

uint32_t mmalil_omx_video_level_to_mmal(OMX_U32 level, OMX_VIDEO_CODINGTYPE coding)
{
   unsigned int i;
   for(i = 0; mmal_omx_video_level_table[i].mmal != MMAL_VIDEO_LEVEL_DUMMY; i++)
      if(mmal_omx_video_level_table[i].omx == level
         && mmal_omx_video_level_table[i].omx_coding == coding) break;
   return mmal_omx_video_level_table[i].mmal;
}
