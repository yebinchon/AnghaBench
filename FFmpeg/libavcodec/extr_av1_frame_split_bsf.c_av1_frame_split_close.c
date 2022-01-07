
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cbc; int temporal_unit; int buffer_pkt; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVBSFContext ;
typedef TYPE_2__ AV1FSplitContext ;


 int av_packet_free (int *) ;
 int ff_cbs_close (int *) ;
 int ff_cbs_fragment_free (int ,int *) ;

__attribute__((used)) static void av1_frame_split_close(AVBSFContext *ctx)
{
    AV1FSplitContext *s = ctx->priv_data;

    av_packet_free(&s->buffer_pkt);
    ff_cbs_fragment_free(s->cbc, &s->temporal_unit);
    ff_cbs_close(&s->cbc);
}
