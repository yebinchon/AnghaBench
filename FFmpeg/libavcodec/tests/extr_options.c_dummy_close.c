
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_1__ AVCodecContext ;


 int av_freep (int *) ;

__attribute__((used)) static int dummy_close(AVCodecContext *ctx)
{
    av_freep(&ctx->extradata);
    ctx->extradata_size = 0;
    return 0;
}
