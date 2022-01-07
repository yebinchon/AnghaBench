
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int data; int * buf; } ;
struct TYPE_6__ {int data_size; int data; int data_ref; } ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_buffer_ref (int ) ;
 int av_buffer_unref (int **) ;
 int ff_cbs_write_fragment_data (int *,TYPE_1__*) ;

int ff_cbs_write_packet(CodedBitstreamContext *ctx,
                        AVPacket *pkt,
                        CodedBitstreamFragment *frag)
{
    AVBufferRef *buf;
    int err;

    err = ff_cbs_write_fragment_data(ctx, frag);
    if (err < 0)
        return err;

    buf = av_buffer_ref(frag->data_ref);
    if (!buf)
        return AVERROR(ENOMEM);

    av_buffer_unref(&pkt->buf);

    pkt->buf = buf;
    pkt->data = frag->data;
    pkt->size = frag->data_size;

    return 0;
}
