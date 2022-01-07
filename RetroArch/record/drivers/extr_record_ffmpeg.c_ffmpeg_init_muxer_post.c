
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {TYPE_9__* ctx; TYPE_7__* astream; TYPE_7__* vstream; } ;
struct TYPE_14__ {TYPE_4__* codec; int encoder; } ;
struct TYPE_13__ {scalar_t__ audio_enable; } ;
struct TYPE_12__ {TYPE_4__* codec; int encoder; } ;
struct TYPE_17__ {TYPE_5__ muxer; TYPE_3__ audio; TYPE_2__ config; TYPE_1__ video; } ;
typedef TYPE_6__ ffmpeg_t ;
struct TYPE_19__ {int metadata; } ;
struct TYPE_18__ {TYPE_4__* codec; int time_base; int sample_aspect_ratio; } ;
struct TYPE_15__ {int time_base; int sample_aspect_ratio; } ;
typedef TYPE_7__ AVStream ;


 int av_dict_set (int *,char*,char*,int ) ;
 TYPE_7__* avformat_new_stream (TYPE_9__*,int ) ;
 scalar_t__ avformat_write_header (TYPE_9__*,int *) ;

__attribute__((used)) static bool ffmpeg_init_muxer_post(ffmpeg_t *handle)
{
   AVStream *stream = avformat_new_stream(handle->muxer.ctx,
         handle->video.encoder);

   stream->codec = handle->video.codec;
   stream->time_base = stream->codec->time_base;
   handle->muxer.vstream = stream;
   handle->muxer.vstream->sample_aspect_ratio =
      handle->video.codec->sample_aspect_ratio;

   if (handle->config.audio_enable)
   {
      stream = avformat_new_stream(handle->muxer.ctx,
            handle->audio.encoder);
      stream->codec = handle->audio.codec;
      stream->time_base = stream->codec->time_base;
      handle->muxer.astream = stream;
   }

   av_dict_set(&handle->muxer.ctx->metadata, "title",
         "RetroArch Video Dump", 0);

   return avformat_write_header(handle->muxer.ctx, ((void*)0)) >= 0;
}
