
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVSubtitle ;
typedef int AVCodecContext ;


 int encode_dvd_subtitles (int *,unsigned char*,int,int const*) ;

__attribute__((used)) static int dvdsub_encode(AVCodecContext *avctx,
                         unsigned char *buf, int buf_size,
                         const AVSubtitle *sub)
{

    int ret;

    ret = encode_dvd_subtitles(avctx, buf, buf_size, sub);
    return ret;
}
