
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cbc; int access_unit; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1MetadataContext ;


 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void av1_metadata_close(AVBSFContext *bsf)
{
    AV1MetadataContext *ctx = bsf->priv_data;

    ff_cbs_fragment_free(ctx->cbc, &ctx->access_unit);
    ff_cbs_close(&ctx->cbc);
}
