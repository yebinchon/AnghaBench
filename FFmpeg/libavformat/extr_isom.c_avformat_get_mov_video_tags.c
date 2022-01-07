
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVCodecTag {int dummy; } ;


 struct AVCodecTag const* ff_codec_movvideo_tags ;

const struct AVCodecTag *avformat_get_mov_video_tags(void)
{
    return ff_codec_movvideo_tags;
}
