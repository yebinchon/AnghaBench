
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* priv_data; TYPE_1__* codec; } ;
struct TYPE_6__ {int (* close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ CodedBitstreamContext ;


 int av_freep (TYPE_2__**) ;
 int stub1 (TYPE_2__*) ;

void ff_cbs_close(CodedBitstreamContext **ctx_ptr)
{
    CodedBitstreamContext *ctx = *ctx_ptr;

    if (!ctx)
        return;

    if (ctx->codec && ctx->codec->close)
        ctx->codec->close(ctx);

    av_freep(&ctx->priv_data);
    av_freep(ctx_ptr);
}
