
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_2__* vstream; } ;
struct TYPE_11__ {TYPE_8__* codec; scalar_t__ outbuf_size; int outbuf; } ;
struct TYPE_14__ {TYPE_3__ muxer; TYPE_1__ video; } ;
typedef TYPE_4__ ffmpeg_t ;
struct TYPE_16__ {int time_base; } ;
struct TYPE_15__ {scalar_t__ pts; scalar_t__ dts; int stream_index; scalar_t__ size; int data; } ;
struct TYPE_12__ {int index; int time_base; } ;
typedef TYPE_5__ AVPacket ;
typedef int AVFrame ;


 void* AV_NOPTS_VALUE ;
 int av_init_packet (TYPE_5__*) ;
 void* av_rescale_q (scalar_t__,int ,int ) ;
 scalar_t__ avcodec_encode_video2 (TYPE_8__*,TYPE_5__*,int *,int*) ;

__attribute__((used)) static bool encode_video(ffmpeg_t *handle, AVPacket *pkt, AVFrame *frame)
{
   int got_packet = 0;

   av_init_packet(pkt);
   pkt->data = handle->video.outbuf;
   pkt->size = handle->video.outbuf_size;

   if (avcodec_encode_video2(handle->video.codec, pkt, frame, &got_packet) < 0)
      return 0;

   if (!got_packet)
   {
      pkt->size = 0;
      pkt->pts = AV_NOPTS_VALUE;
      pkt->dts = AV_NOPTS_VALUE;
      return 1;
   }

   if (pkt->pts != (int64_t)AV_NOPTS_VALUE)
   {
      pkt->pts = av_rescale_q(pkt->pts, handle->video.codec->time_base,
            handle->muxer.vstream->time_base);
   }

   if (pkt->dts != (int64_t)AV_NOPTS_VALUE)
   {
      pkt->dts = av_rescale_q(pkt->dts, handle->video.codec->time_base,
            handle->muxer.vstream->time_base);
   }

   pkt->stream_index = handle->muxer.vstream->index;
   return 1;
}
