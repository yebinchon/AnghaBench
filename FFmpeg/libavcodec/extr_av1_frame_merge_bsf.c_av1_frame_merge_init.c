
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbc; void* pkt; void* in; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1FMergeContext ;


 int AVERROR (int ) ;
 int AV_CODEC_ID_AV1 ;
 int ENOMEM ;
 void* av_packet_alloc () ;
 int ff_cbs_init (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int av1_frame_merge_init(AVBSFContext *bsf)
{
    AV1FMergeContext *ctx = bsf->priv_data;

    ctx->in = av_packet_alloc();
    ctx->pkt = av_packet_alloc();
    if (!ctx->in || !ctx->pkt)
        return AVERROR(ENOMEM);

    return ff_cbs_init(&ctx->cbc, AV_CODEC_ID_AV1, bsf);
}
