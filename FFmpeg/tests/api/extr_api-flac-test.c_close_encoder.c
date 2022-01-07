
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int av_freep (int **) ;
 int avcodec_close (int *) ;

__attribute__((used)) static int close_encoder(AVCodecContext **enc_ctx)
{
    avcodec_close(*enc_ctx);
    av_freep(enc_ctx);
    return 0;
}
