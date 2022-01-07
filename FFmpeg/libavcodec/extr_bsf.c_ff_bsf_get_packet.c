
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* internal; } ;
struct TYPE_8__ {TYPE_1__* buffer_pkt; scalar_t__ eof; } ;
struct TYPE_7__ {int side_data_elems; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVBSFInternal ;
typedef TYPE_3__ AVBSFContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int ENOMEM ;
 TYPE_1__* av_packet_alloc () ;

int ff_bsf_get_packet(AVBSFContext *ctx, AVPacket **pkt)
{
    AVBSFInternal *in = ctx->internal;
    AVPacket *tmp_pkt;

    if (in->eof)
        return AVERROR_EOF;

    if (!ctx->internal->buffer_pkt->data &&
        !ctx->internal->buffer_pkt->side_data_elems)
        return AVERROR(EAGAIN);

    tmp_pkt = av_packet_alloc();
    if (!tmp_pkt)
        return AVERROR(ENOMEM);

    *pkt = ctx->internal->buffer_pkt;
    ctx->internal->buffer_pkt = tmp_pkt;

    return 0;
}
