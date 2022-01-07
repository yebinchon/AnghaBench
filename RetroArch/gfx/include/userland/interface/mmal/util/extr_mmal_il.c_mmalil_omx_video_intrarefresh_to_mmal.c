
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmal; scalar_t__ omx; } ;
typedef scalar_t__ OMX_VIDEO_INTRAREFRESHTYPE ;
typedef scalar_t__ MMAL_VIDEO_INTRA_REFRESH_T ;


 scalar_t__ MMAL_VIDEO_INTRA_REFRESH_DUMMY ;
 TYPE_1__* mmal_omx_video_intrarefresh_table ;

MMAL_VIDEO_INTRA_REFRESH_T mmalil_omx_video_intrarefresh_to_mmal(OMX_VIDEO_INTRAREFRESHTYPE omx)
{
   unsigned int i;
   for(i = 0; mmal_omx_video_intrarefresh_table[i].mmal != MMAL_VIDEO_INTRA_REFRESH_DUMMY; i++)
      if(mmal_omx_video_intrarefresh_table[i].omx == omx) break;
   return mmal_omx_video_intrarefresh_table[i].mmal;
}
