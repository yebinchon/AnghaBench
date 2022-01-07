
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_8__ {TYPE_3__* avf; } ;
struct TYPE_7__ {int header_written; TYPE_3__* avf; } ;
typedef TYPE_1__ FifoThreadContext ;
typedef TYPE_2__ FifoContext ;
typedef TYPE_3__ AVFormatContext ;


 int av_write_trailer (TYPE_3__*) ;
 int ff_format_io_close (TYPE_3__*,int *) ;

__attribute__((used)) static int fifo_thread_write_trailer(FifoThreadContext *ctx)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVFormatContext *avf2 = fifo->avf;
    int ret;

    if (!ctx->header_written)
        return 0;

    ret = av_write_trailer(avf2);
    ff_format_io_close(avf2, &avf2->pb);

    return ret;
}
