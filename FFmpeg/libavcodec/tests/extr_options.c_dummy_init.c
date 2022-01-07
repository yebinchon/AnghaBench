
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extradata_size; int extradata; } ;
typedef TYPE_1__ AVCodecContext ;


 int av_malloc (int) ;

__attribute__((used)) static int dummy_init(AVCodecContext *ctx)
{

    ctx->extradata_size = 8;
    ctx->extradata = av_malloc(ctx->extradata_size);
    return 0;
}
