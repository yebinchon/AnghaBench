
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int parser; int avctx; } ;
typedef TYPE_1__ RemoveExtradataContext ;
typedef TYPE_2__ AVBSFContext ;


 int av_parser_close (int ) ;
 int avcodec_free_context (int *) ;

__attribute__((used)) static void remove_extradata_close(AVBSFContext *ctx)
{
    RemoveExtradataContext *s = ctx->priv_data;

    avcodec_free_context(&s->avctx);
    av_parser_close(s->parser);
}
