
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int par_out; int par_in; struct TYPE_8__* priv_data; struct TYPE_8__* internal; int buffer_pkt; TYPE_1__* filter; } ;
struct TYPE_7__ {scalar_t__ priv_class; int (* close ) (TYPE_2__*) ;} ;
typedef TYPE_2__ AVBSFContext ;


 int av_freep (TYPE_2__**) ;
 int av_opt_free (TYPE_2__*) ;
 int av_packet_free (int *) ;
 int avcodec_parameters_free (int *) ;
 int stub1 (TYPE_2__*) ;

void av_bsf_free(AVBSFContext **pctx)
{
    AVBSFContext *ctx;

    if (!pctx || !*pctx)
        return;
    ctx = *pctx;

    if (ctx->filter->close)
        ctx->filter->close(ctx);
    if (ctx->filter->priv_class && ctx->priv_data)
        av_opt_free(ctx->priv_data);

    av_opt_free(ctx);

    if (ctx->internal)
        av_packet_free(&ctx->internal->buffer_pkt);
    av_freep(&ctx->internal);
    av_freep(&ctx->priv_data);

    avcodec_parameters_free(&ctx->par_in);
    avcodec_parameters_free(&ctx->par_out);

    av_freep(pctx);
}
