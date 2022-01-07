
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct record_video_data {int is_dupe; } ;
struct TYPE_12__ {int frame_cnt; TYPE_9__* conv_frame; } ;
struct TYPE_11__ {int ctx; } ;
struct TYPE_13__ {TYPE_2__ video; TYPE_1__ muxer; } ;
typedef TYPE_3__ ffmpeg_t ;
struct TYPE_15__ {int pts; } ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_4__ AVPacket ;


 scalar_t__ av_interleaved_write_frame (int ,TYPE_4__*) ;
 int encode_video (TYPE_3__*,TYPE_4__*,TYPE_9__*) ;
 int ffmpeg_scale_input (TYPE_3__*,struct record_video_data const*) ;

__attribute__((used)) static bool ffmpeg_push_video_thread(ffmpeg_t *handle,
      const struct record_video_data *vid)
{
   AVPacket pkt;

   if (!vid->is_dupe)
      ffmpeg_scale_input(handle, vid);

   handle->video.conv_frame->pts = handle->video.frame_cnt;

   if (!encode_video(handle, &pkt, handle->video.conv_frame))
      return 0;

   if (pkt.size)
   {
      if (av_interleaved_write_frame(handle->muxer.ctx, &pkt) < 0)
         return 0;
   }

   handle->video.frame_cnt++;
   return 1;
}
