
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pkt; int in; int * frag; int cbc; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1FMergeContext ;


 int av_packet_unref (int ) ;
 int ff_cbs_fragment_reset (int ,int *) ;

__attribute__((used)) static void av1_frame_merge_flush(AVBSFContext *bsf)
{
    AV1FMergeContext *ctx = bsf->priv_data;

    ff_cbs_fragment_reset(ctx->cbc, &ctx->frag[0]);
    ff_cbs_fragment_reset(ctx->cbc, &ctx->frag[1]);
    av_packet_unref(ctx->in);
    av_packet_unref(ctx->pkt);
}
