
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int avcodec_free_context (int **) ;

void hb_avcodec_free_context(AVCodecContext **avctx)
{
    avcodec_free_context(avctx);
}
