
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;
typedef int AVCodec ;


 int av_free (int *) ;
 int * av_malloc (int) ;
 scalar_t__ init_context_defaults (int *,int const*) ;

AVCodecContext *avcodec_alloc_context3(const AVCodec *codec)
{
    AVCodecContext *avctx= av_malloc(sizeof(AVCodecContext));

    if (!avctx)
        return ((void*)0);

    if (init_context_defaults(avctx, codec) < 0) {
        av_free(avctx);
        return ((void*)0);
    }

    return avctx;
}
