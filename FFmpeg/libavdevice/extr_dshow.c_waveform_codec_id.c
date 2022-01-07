
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;


 int AV_CODEC_ID_NONE ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_S32LE ;
 int AV_CODEC_ID_PCM_U8 ;




__attribute__((used)) static enum AVCodecID waveform_codec_id(enum AVSampleFormat sample_fmt)
{
    switch (sample_fmt) {
    case 128: return AV_CODEC_ID_PCM_U8;
    case 130: return AV_CODEC_ID_PCM_S16LE;
    case 129: return AV_CODEC_ID_PCM_S32LE;
    default: return AV_CODEC_ID_NONE;
    }
}
