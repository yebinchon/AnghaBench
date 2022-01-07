
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; int pkt; } ;
struct TYPE_8__ {int header_written; } ;
typedef TYPE_1__ FifoThreadContext ;
typedef TYPE_2__ FifoMessage ;


 int AVERROR (int ) ;
 int EINVAL ;



 int av_assert0 (int) ;
 int fifo_thread_flush_output (TYPE_1__*) ;
 int fifo_thread_write_header (TYPE_1__*) ;
 int fifo_thread_write_packet (TYPE_1__*,int *) ;

__attribute__((used)) static int fifo_thread_dispatch_message(FifoThreadContext *ctx, FifoMessage *msg)
{
    int ret = AVERROR(EINVAL);

    if (!ctx->header_written) {
        ret = fifo_thread_write_header(ctx);
        if (ret < 0)
            return ret;
    }

    switch(msg->type) {
    case 129:
        av_assert0(ret >= 0);
        return ret;
    case 128:
        return fifo_thread_write_packet(ctx, &msg->pkt);
    case 130:
        return fifo_thread_flush_output(ctx);
    }

    av_assert0(0);
    return AVERROR(EINVAL);
}
