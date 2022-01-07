
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int size; int data; scalar_t__ buf; } ;
struct TYPE_16__ {TYPE_1__* codec; } ;
struct TYPE_15__ {int data_size; int data; int data_ref; } ;
struct TYPE_14__ {int (* split_fragment ) (TYPE_3__*,TYPE_2__*,int ) ;} ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef TYPE_3__ CodedBitstreamContext ;
typedef TYPE_4__ AVPacket ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_ref (scalar_t__) ;
 int cbs_fill_fragment_data (TYPE_3__*,TYPE_2__*,int ,int ) ;
 int cbs_read_fragment_content (TYPE_3__*,TYPE_2__*) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ) ;

int ff_cbs_read_packet(CodedBitstreamContext *ctx,
                       CodedBitstreamFragment *frag,
                       const AVPacket *pkt)
{
    int err;

    if (pkt->buf) {
        frag->data_ref = av_buffer_ref(pkt->buf);
        if (!frag->data_ref)
            return AVERROR(ENOMEM);

        frag->data = pkt->data;
        frag->data_size = pkt->size;

    } else {
        err = cbs_fill_fragment_data(ctx, frag, pkt->data, pkt->size);
        if (err < 0)
            return err;
    }

    err = ctx->codec->split_fragment(ctx, frag, 0);
    if (err < 0)
        return err;

    return cbs_read_fragment_content(ctx, frag);
}
