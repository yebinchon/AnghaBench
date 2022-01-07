
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int const AV_SAMPLE_FMT_NONE ;

__attribute__((used)) static bool ffmpeg_codec_has_sample_format(enum AVSampleFormat fmt,
      const enum AVSampleFormat *fmts)
{
   unsigned i;

   for (i = 0; fmts[i] != AV_SAMPLE_FMT_NONE; i++)
      if (fmt == fmts[i])
         return 1;
   return 0;
}
