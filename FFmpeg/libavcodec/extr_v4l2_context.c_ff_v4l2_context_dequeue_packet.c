
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ done; } ;
typedef TYPE_1__ V4L2Context ;
typedef int V4L2Buffer ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int ff_v4l2_buffer_buf_to_avpkt (int *,int *) ;
 int * v4l2_dequeue_v4l2buf (TYPE_1__*,int) ;

int ff_v4l2_context_dequeue_packet(V4L2Context* ctx, AVPacket* pkt)
{
    V4L2Buffer* avbuf = ((void*)0);






    avbuf = v4l2_dequeue_v4l2buf(ctx, -1);
    if (!avbuf) {
        if (ctx->done)
            return AVERROR_EOF;

        return AVERROR(EAGAIN);
    }

    return ff_v4l2_buffer_buf_to_avpkt(pkt, avbuf);
}
