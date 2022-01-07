
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCodecTag {int dummy; } ;


 struct AVCodecTag const* ff_codec_wav_tags ;

const struct AVCodecTag *avformat_get_riff_audio_tags(void)
{
    return ff_codec_wav_tags;
}
