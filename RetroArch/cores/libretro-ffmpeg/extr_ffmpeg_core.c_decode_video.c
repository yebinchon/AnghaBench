
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct SwsContext {int dummy; } ;
struct TYPE_9__ {int height; int width; } ;
struct TYPE_8__ {int linesize; scalar_t__ data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFrame ;


 int av_frame_get_color_range (TYPE_1__*) ;
 int av_frame_get_colorspace (TYPE_1__*) ;
 int avcodec_decode_video2 (int ,TYPE_1__*,int*,int *) ;
 TYPE_2__ media ;
 int set_colorspace (struct SwsContext*,int ,int ,int ,int ) ;
 int sws_scale (struct SwsContext*,int const* const*,int ,int ,int ,scalar_t__,int ) ;
 int vctx ;

__attribute__((used)) static bool decode_video(AVPacket *pkt, AVFrame *frame,
      AVFrame *conv, struct SwsContext *sws)
{
   int got_ptr = 0;
   int ret = avcodec_decode_video2(vctx, frame, &got_ptr, pkt);

   if (ret < 0)
      return 0;

   if (got_ptr)
   {
      set_colorspace(sws, media.width, media.height,
            av_frame_get_colorspace(frame), av_frame_get_color_range(frame));
      sws_scale(sws, (const uint8_t * const*)frame->data,
            frame->linesize, 0, media.height,
            conv->data, conv->linesize);
      return 1;
   }

   return 0;
}
