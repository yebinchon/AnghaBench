
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int ctx; } ;
typedef TYPE_1__ BSFCompatContext ;
typedef TYPE_2__ AVBitStreamFilterContext ;


 int av_bsf_free (int *) ;
 int av_free (TYPE_2__*) ;
 int av_freep (TYPE_1__**) ;

void av_bitstream_filter_close(AVBitStreamFilterContext *bsfc)
{
    BSFCompatContext *priv;

    if (!bsfc)
        return;

    priv = bsfc->priv_data;

    av_bsf_free(&priv->ctx);
    av_freep(&bsfc->priv_data);
    av_free(bsfc);
}
