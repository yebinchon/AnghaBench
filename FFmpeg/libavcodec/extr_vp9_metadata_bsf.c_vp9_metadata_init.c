
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cbc; } ;
typedef TYPE_1__ VP9MetadataContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int AV_CODEC_ID_VP9 ;
 int ff_cbs_init (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int vp9_metadata_init(AVBSFContext *bsf)
{
    VP9MetadataContext *ctx = bsf->priv_data;

    return ff_cbs_init(&ctx->cbc, AV_CODEC_ID_VP9, bsf);
}
