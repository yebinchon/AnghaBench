
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVSubtitle ;
typedef int AVCodecContext ;


 int encode_dvb_subtitles (int *,unsigned char*,int const*) ;

__attribute__((used)) static int dvbsub_encode(AVCodecContext *avctx,
                         unsigned char *buf, int buf_size,
                         const AVSubtitle *sub)
{
    int ret;

    ret = encode_dvb_subtitles(avctx, buf, sub);
    return ret;
}
