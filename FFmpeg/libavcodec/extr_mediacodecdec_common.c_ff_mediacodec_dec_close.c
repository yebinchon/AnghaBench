
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MediaCodecDecContext ;
typedef int AVCodecContext ;


 int ff_mediacodec_dec_unref (int *) ;

int ff_mediacodec_dec_close(AVCodecContext *avctx, MediaCodecDecContext *s)
{
    ff_mediacodec_dec_unref(s);

    return 0;
}
