
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_7__ {int fifo; } ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_2__ StreamInfo ;
typedef TYPE_3__ AVFormatContext ;


 int av_assert0 (int) ;
 scalar_t__ av_fifo_size (int ) ;
 int output_packet (TYPE_3__*,int) ;

__attribute__((used)) static int mpeg_mux_end(AVFormatContext *ctx)
{
    StreamInfo *stream;
    int i;

    for (;;) {
        int ret = output_packet(ctx, 1);
        if (ret < 0)
            return ret;
        else if (ret == 0)
            break;
    }







    for (i = 0; i < ctx->nb_streams; i++) {
        stream = ctx->streams[i]->priv_data;

        av_assert0(av_fifo_size(stream->fifo) == 0);
    }
    return 0;
}
