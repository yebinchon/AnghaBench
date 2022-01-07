
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctx; struct TYPE_6__* priv_data; int const* filter; } ;
typedef TYPE_1__ BSFCompatContext ;
typedef TYPE_1__ AVBitStreamFilterContext ;
typedef int AVBitStreamFilter ;


 int av_bsf_free (int *) ;
 int * av_bsf_get_by_name (char const*) ;
 int av_freep (TYPE_1__**) ;
 TYPE_1__* av_mallocz (int) ;

AVBitStreamFilterContext *av_bitstream_filter_init(const char *name)
{
    AVBitStreamFilterContext *ctx = ((void*)0);
    BSFCompatContext *priv = ((void*)0);
    const AVBitStreamFilter *bsf;

    bsf = av_bsf_get_by_name(name);
    if (!bsf)
        return ((void*)0);

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return ((void*)0);

    priv = av_mallocz(sizeof(*priv));
    if (!priv)
        goto fail;


    ctx->filter = bsf;
    ctx->priv_data = priv;

    return ctx;

fail:
    if (priv)
        av_bsf_free(&priv->ctx);
    av_freep(&priv);
    av_freep(&ctx);
    return ((void*)0);
}
