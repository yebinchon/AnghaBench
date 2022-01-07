
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ctx; } ;
struct TYPE_9__ {TYPE_1__ muxer; } ;
typedef TYPE_2__ ffmpeg_t ;
struct TYPE_10__ {int size; } ;
typedef TYPE_3__ AVPacket ;


 scalar_t__ av_interleaved_write_frame (int ,TYPE_3__*) ;
 int encode_video (TYPE_2__*,TYPE_3__*,int *) ;

__attribute__((used)) static void ffmpeg_flush_video(ffmpeg_t *handle)
{
   for (;;)
   {
      AVPacket pkt;
      if (!encode_video(handle, &pkt, ((void*)0)) || !pkt.size ||
            av_interleaved_write_frame(handle->muxer.ctx, &pkt) < 0)
         break;
   }
}
