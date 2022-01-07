
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cbc; int pkt; int in; int * frag; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1FMergeContext ;


 int av_packet_free (int *) ;
 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void av1_frame_merge_close(AVBSFContext *bsf)
{
    AV1FMergeContext *ctx = bsf->priv_data;

    ff_cbs_fragment_free(ctx->cbc, &ctx->frag[0]);
    ff_cbs_fragment_free(ctx->cbc, &ctx->frag[1]);
    av_packet_free(&ctx->in);
    av_packet_free(&ctx->pkt);
    ff_cbs_close(&ctx->cbc);
}
