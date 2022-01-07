
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_1__** inputs; } ;
struct TYPE_18__ {int best_effort_timestamp; int pts; } ;
struct TYPE_17__ {scalar_t__ stream_index; } ;
struct TYPE_16__ {int time_base; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_BUFFERSRC_FLAG_KEEP_REF ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_buffersink_get_frame (TYPE_5__*,TYPE_3__*) ;
 scalar_t__ av_buffersrc_add_frame_flags (int ,TYPE_3__*,int ) ;
 char* av_err2str (int) ;
 TYPE_3__* av_frame_alloc () ;
 int av_frame_free (TYPE_3__**) ;
 int av_frame_unref (TYPE_3__*) ;
 int av_log (int *,int ,char*) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_read_frame (int ,TYPE_2__*) ;
 int avcodec_free_context (int *) ;
 int avcodec_receive_frame (int ,TYPE_3__*) ;
 int avcodec_send_packet (int ,TYPE_2__*) ;
 int avfilter_graph_free (int *) ;
 int avformat_close_input (int *) ;
 TYPE_5__* buffersink_ctx ;
 int buffersrc_ctx ;
 int dec_ctx ;
 int display_frame (TYPE_3__*,int ) ;
 int exit (int) ;
 int filter_descr ;
 int filter_graph ;
 int fmt_ctx ;
 int fprintf (int ,char*,char*) ;
 int init_filters (int ) ;
 int open_input_file (char*) ;
 int perror (char*) ;
 int stderr ;
 scalar_t__ video_stream_index ;

int main(int argc, char **argv)
{
    int ret;
    AVPacket packet;
    AVFrame *frame;
    AVFrame *filt_frame;

    if (argc != 2) {
        fprintf(stderr, "Usage: %s file\n", argv[0]);
        exit(1);
    }

    frame = av_frame_alloc();
    filt_frame = av_frame_alloc();
    if (!frame || !filt_frame) {
        perror("Could not allocate frame");
        exit(1);
    }

    if ((ret = open_input_file(argv[1])) < 0)
        goto end;
    if ((ret = init_filters(filter_descr)) < 0)
        goto end;


    while (1) {
        if ((ret = av_read_frame(fmt_ctx, &packet)) < 0)
            break;

        if (packet.stream_index == video_stream_index) {
            ret = avcodec_send_packet(dec_ctx, &packet);
            if (ret < 0) {
                av_log(((void*)0), AV_LOG_ERROR, "Error while sending a packet to the decoder\n");
                break;
            }

            while (ret >= 0) {
                ret = avcodec_receive_frame(dec_ctx, frame);
                if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF) {
                    break;
                } else if (ret < 0) {
                    av_log(((void*)0), AV_LOG_ERROR, "Error while receiving a frame from the decoder\n");
                    goto end;
                }

                frame->pts = frame->best_effort_timestamp;


                if (av_buffersrc_add_frame_flags(buffersrc_ctx, frame, AV_BUFFERSRC_FLAG_KEEP_REF) < 0) {
                    av_log(((void*)0), AV_LOG_ERROR, "Error while feeding the filtergraph\n");
                    break;
                }


                while (1) {
                    ret = av_buffersink_get_frame(buffersink_ctx, filt_frame);
                    if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
                        break;
                    if (ret < 0)
                        goto end;
                    display_frame(filt_frame, buffersink_ctx->inputs[0]->time_base);
                    av_frame_unref(filt_frame);
                }
                av_frame_unref(frame);
            }
        }
        av_packet_unref(&packet);
    }
end:
    avfilter_graph_free(&filter_graph);
    avcodec_free_context(&dec_ctx);
    avformat_close_input(&fmt_ctx);
    av_frame_free(&frame);
    av_frame_free(&filt_frame);

    if (ret < 0 && ret != AVERROR_EOF) {
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        exit(1);
    }

    exit(0);
}
