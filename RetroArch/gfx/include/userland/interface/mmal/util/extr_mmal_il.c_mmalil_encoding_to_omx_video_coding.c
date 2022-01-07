
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ encoding; int coding; } ;
typedef int OMX_VIDEO_CODINGTYPE ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* mmal_omx_video_coding_table ;

OMX_VIDEO_CODINGTYPE mmalil_encoding_to_omx_video_coding(uint32_t encoding)
{
   unsigned int i;
   for(i = 0; mmal_omx_video_coding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(mmal_omx_video_coding_table[i].encoding == encoding) break;
   return mmal_omx_video_coding_table[i].coding;
}
