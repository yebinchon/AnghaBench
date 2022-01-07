
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int temporal_unit; int cbc; int buffer_pkt; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1FSplitContext ;


 int av_packet_unref (int ) ;
 int ff_cbs_fragment_reset (int ,int *) ;

__attribute__((used)) static void av1_frame_split_flush(AVBSFContext *ctx)
{
    AV1FSplitContext *s = ctx->priv_data;

    av_packet_unref(s->buffer_pkt);
    ff_cbs_fragment_reset(s->cbc, &s->temporal_unit);
}
