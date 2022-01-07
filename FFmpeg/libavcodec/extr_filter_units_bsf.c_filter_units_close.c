
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int cbc; int fragment; int type_list; } ;
typedef TYPE_1__ FilterUnitsContext ;
typedef TYPE_2__ AVBSFContext ;


 int av_freep (int *) ;
 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void filter_units_close(AVBSFContext *bsf)
{
    FilterUnitsContext *ctx = bsf->priv_data;

    av_freep(&ctx->type_list);

    ff_cbs_fragment_free(ctx->cbc, &ctx->fragment);
    ff_cbs_close(&ctx->cbc);
}
