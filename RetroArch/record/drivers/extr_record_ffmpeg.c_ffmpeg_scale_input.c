
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct record_video_data {scalar_t__ width; scalar_t__ height; int pitch; int data; } ;
struct TYPE_8__ {TYPE_2__* conv_frame; int scaler; int sws; int pix_fmt; int in_pix_fmt; scalar_t__ use_sws; } ;
struct TYPE_6__ {scalar_t__ out_width; scalar_t__ out_height; } ;
struct TYPE_9__ {TYPE_3__ video; TYPE_1__ params; } ;
typedef TYPE_4__ ffmpeg_t ;
struct TYPE_7__ {int * linesize; int * data; } ;


 int SWS_BILINEAR ;
 int SWS_POINT ;
 int sws_getCachedContext (int ,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int ,int ,int *,int *,int *) ;
 int sws_scale (int ,int const* const*,int*,int ,scalar_t__,int *,int *) ;
 int video_frame_record_scale (int *,int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static void ffmpeg_scale_input(ffmpeg_t *handle,
      const struct record_video_data *vid)
{

   bool shrunk = handle->params.out_width < vid->width
      || handle->params.out_height < vid->height;

   if (handle->video.use_sws)
   {
      int linesize = vid->pitch;

      handle->video.sws = sws_getCachedContext(handle->video.sws,
            vid->width, vid->height, handle->video.in_pix_fmt,
            handle->params.out_width, handle->params.out_height,
            handle->video.pix_fmt,
            shrunk ? SWS_BILINEAR : SWS_POINT, ((void*)0), ((void*)0), ((void*)0));

      sws_scale(handle->video.sws, (const uint8_t* const*)&vid->data,
            &linesize, 0, vid->height, handle->video.conv_frame->data,
            handle->video.conv_frame->linesize);
   }
   else
   {
      video_frame_record_scale(
            &handle->video.scaler,
            handle->video.conv_frame->data[0],
            vid->data,
            handle->params.out_width,
            handle->params.out_height,
            handle->video.conv_frame->linesize[0],
            vid->width,
            vid->height,
            vid->pitch,
            shrunk);
   }
}
