
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ff_audio_info {int use_float; int is_planar; int sample_size; TYPE_1__* codec; } ;
typedef int int16_t ;
struct TYPE_5__ {int sample_fmts; } ;
struct TYPE_4__ {void* sample_fmt; } ;
typedef TYPE_2__ AVCodec ;


 void* AV_SAMPLE_FMT_FLT ;
 void* AV_SAMPLE_FMT_FLTP ;
 void* AV_SAMPLE_FMT_NONE ;
 void* AV_SAMPLE_FMT_S16 ;
 void* AV_SAMPLE_FMT_S16P ;
 int RARCH_LOG (char*) ;
 scalar_t__ ffmpeg_codec_has_sample_format (void*,int ) ;

__attribute__((used)) static void ffmpeg_audio_resolve_format(struct ff_audio_info *audio,
      const AVCodec *codec)
{
   audio->codec->sample_fmt = AV_SAMPLE_FMT_NONE;

   if (ffmpeg_codec_has_sample_format(AV_SAMPLE_FMT_FLTP, codec->sample_fmts))
   {
      audio->codec->sample_fmt = AV_SAMPLE_FMT_FLTP;
      audio->use_float = 1;
      audio->is_planar = 1;
      RARCH_LOG("[FFmpeg]: Using sample format FLTP.\n");
   }
   else if (ffmpeg_codec_has_sample_format(AV_SAMPLE_FMT_FLT, codec->sample_fmts))
   {
      audio->codec->sample_fmt = AV_SAMPLE_FMT_FLT;
      audio->use_float = 1;
      audio->is_planar = 0;
      RARCH_LOG("[FFmpeg]: Using sample format FLT.\n");
   }
   else if (ffmpeg_codec_has_sample_format(AV_SAMPLE_FMT_S16P, codec->sample_fmts))
   {
      audio->codec->sample_fmt = AV_SAMPLE_FMT_S16P;
      audio->use_float = 0;
      audio->is_planar = 1;
      RARCH_LOG("[FFmpeg]: Using sample format S16P.\n");
   }
   else if (ffmpeg_codec_has_sample_format(AV_SAMPLE_FMT_S16, codec->sample_fmts))
   {
      audio->codec->sample_fmt = AV_SAMPLE_FMT_S16;
      audio->use_float = 0;
      audio->is_planar = 0;
      RARCH_LOG("[FFmpeg]: Using sample format S16.\n");
   }
   audio->sample_size = audio->use_float ? sizeof(float) : sizeof(int16_t);
}
