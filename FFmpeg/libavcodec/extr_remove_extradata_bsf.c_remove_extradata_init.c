
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int codec_id; } ;
struct TYPE_6__ {TYPE_4__* par_in; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int avctx; scalar_t__ parser; } ;
typedef TYPE_1__ RemoveExtradataContext ;
typedef TYPE_2__ AVBSFContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ av_parser_init (int ) ;
 int avcodec_alloc_context3 (int *) ;
 int avcodec_parameters_to_context (int ,TYPE_4__*) ;

__attribute__((used)) static int remove_extradata_init(AVBSFContext *ctx)
{
    RemoveExtradataContext *s = ctx->priv_data;
    int ret;

    s->parser = av_parser_init(ctx->par_in->codec_id);

    if (s->parser) {
        s->avctx = avcodec_alloc_context3(((void*)0));
        if (!s->avctx)
            return AVERROR(ENOMEM);

        ret = avcodec_parameters_to_context(s->avctx, ctx->par_in);
        if (ret < 0)
            return ret;
    }

    return 0;
}
