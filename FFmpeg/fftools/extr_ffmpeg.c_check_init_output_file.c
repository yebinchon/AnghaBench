
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pkt ;
struct TYPE_13__ {int nb_streams; int url; int interrupt_callback; } ;
struct TYPE_12__ {int ost_index; int header_written; TYPE_8__* ctx; int opts; } ;
struct TYPE_11__ {int muxing_queue; TYPE_1__* st; int mux_timebase; int initialized; } ;
struct TYPE_10__ {int time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ OutputFile ;
typedef int AVPacket ;


 int AV_LOG_ERROR ;
 int av_dump_format (TYPE_8__*,int,int ,int) ;
 int av_err2str (int) ;
 int av_fifo_generic_read (int ,int *,int,int *) ;
 scalar_t__ av_fifo_size (int ) ;
 int av_log (int *,int ,char*,int,int ) ;
 int avformat_write_header (TYPE_8__*,int *) ;
 int int_cb ;
 TYPE_2__** output_streams ;
 int print_sdp () ;
 scalar_t__ sdp_filename ;
 scalar_t__ want_sdp ;
 int write_packet (TYPE_3__*,int *,TYPE_2__*,int) ;

__attribute__((used)) static int check_init_output_file(OutputFile *of, int file_index)
{
    int ret, i;

    for (i = 0; i < of->ctx->nb_streams; i++) {
        OutputStream *ost = output_streams[of->ost_index + i];
        if (!ost->initialized)
            return 0;
    }

    of->ctx->interrupt_callback = int_cb;

    ret = avformat_write_header(of->ctx, &of->opts);
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR,
               "Could not write header for output file #%d "
               "(incorrect codec parameters ?): %s\n",
               file_index, av_err2str(ret));
        return ret;
    }

    of->header_written = 1;

    av_dump_format(of->ctx, file_index, of->ctx->url, 1);

    if (sdp_filename || want_sdp)
        print_sdp();


    for (i = 0; i < of->ctx->nb_streams; i++) {
        OutputStream *ost = output_streams[of->ost_index + i];


        if (!av_fifo_size(ost->muxing_queue))
            ost->mux_timebase = ost->st->time_base;

        while (av_fifo_size(ost->muxing_queue)) {
            AVPacket pkt;
            av_fifo_generic_read(ost->muxing_queue, &pkt, sizeof(pkt), ((void*)0));
            write_packet(of, &pkt, ost, 1);
        }
    }

    return 0;
}
