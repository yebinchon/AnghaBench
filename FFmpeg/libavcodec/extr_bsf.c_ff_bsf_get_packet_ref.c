
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int side_data_elems; int data; } ;
struct TYPE_6__ {TYPE_1__* internal; } ;
struct TYPE_5__ {TYPE_4__* buffer_pkt; scalar_t__ eof; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVBSFInternal ;
typedef TYPE_2__ AVBSFContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_packet_move_ref (int *,TYPE_4__*) ;

int ff_bsf_get_packet_ref(AVBSFContext *ctx, AVPacket *pkt)
{
    AVBSFInternal *in = ctx->internal;

    if (in->eof)
        return AVERROR_EOF;

    if (!ctx->internal->buffer_pkt->data &&
        !ctx->internal->buffer_pkt->side_data_elems)
        return AVERROR(EAGAIN);

    av_packet_move_ref(pkt, ctx->internal->buffer_pkt);

    return 0;
}
