
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* priv_data; TYPE_1__* internal; void* par_out; void* par_in; TYPE_2__ const* filter; int * av_class; } ;
struct TYPE_9__ {int priv_data_size; int * priv_class; } ;
struct TYPE_8__ {int buffer_pkt; } ;
typedef int AVClass ;
typedef TYPE_2__ AVBitStreamFilter ;
typedef TYPE_3__ AVBSFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bsf_free (TYPE_3__**) ;
 void* av_mallocz (int) ;
 int av_opt_set_defaults (TYPE_3__*) ;
 int av_packet_alloc () ;
 void* avcodec_parameters_alloc () ;
 int bsf_class ;

int av_bsf_alloc(const AVBitStreamFilter *filter, AVBSFContext **pctx)
{
    AVBSFContext *ctx;
    int ret;

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return AVERROR(ENOMEM);

    ctx->av_class = &bsf_class;
    ctx->filter = filter;

    ctx->par_in = avcodec_parameters_alloc();
    ctx->par_out = avcodec_parameters_alloc();
    if (!ctx->par_in || !ctx->par_out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ctx->internal = av_mallocz(sizeof(*ctx->internal));
    if (!ctx->internal) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ctx->internal->buffer_pkt = av_packet_alloc();
    if (!ctx->internal->buffer_pkt) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    av_opt_set_defaults(ctx);


    if (filter->priv_data_size) {
        ctx->priv_data = av_mallocz(filter->priv_data_size);
        if (!ctx->priv_data) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        if (filter->priv_class) {
            *(const AVClass **)ctx->priv_data = filter->priv_class;
            av_opt_set_defaults(ctx->priv_data);
        }
    }

    *pctx = ctx;
    return 0;
fail:
    av_bsf_free(&ctx);
    return ret;
}
