
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_BUFFERSRC_FLAG_KEEP_REF ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 scalar_t__ audio_stream_index ;
 int av_buffersink_get_frame (int ,int *) ;
 scalar_t__ av_buffersrc_add_frame_flags (int ,int *,int ) ;
 char* av_err2str (int) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_frame_unref (int *) ;
 int av_log (int *,int ,char*) ;
 int av_packet_unref (TYPE_1__*) ;
 int av_read_frame (int ,TYPE_1__*) ;
 int avcodec_free_context (int *) ;
 int avcodec_receive_frame (int ,int *) ;
 int avcodec_send_packet (int ,TYPE_1__*) ;
 int avfilter_graph_free (int *) ;
 int avformat_close_input (int *) ;
 int buffersink_ctx ;
 int buffersrc_ctx ;
 int dec_ctx ;
 int exit (int) ;
 int filter_descr ;
 int filter_graph ;
 int fmt_ctx ;
 int fprintf (int ,char*,char*,...) ;
 int init_filters (int ) ;
 int open_input_file (char*) ;
 int perror (char*) ;
 char* player ;
 int print_frame (int *) ;
 int stderr ;

int main(int argc, char **argv)
{
    int ret;
    AVPacket packet;
    AVFrame *frame = av_frame_alloc();
    AVFrame *filt_frame = av_frame_alloc();

    if (!frame || !filt_frame) {
        perror("Could not allocate frame");
        exit(1);
    }
    if (argc != 2) {
        fprintf(stderr, "Usage: %s file | %s\n", argv[0], player);
        exit(1);
    }

    if ((ret = open_input_file(argv[1])) < 0)
        goto end;
    if ((ret = init_filters(filter_descr)) < 0)
        goto end;


    while (1) {
        if ((ret = av_read_frame(fmt_ctx, &packet)) < 0)
            break;

        if (packet.stream_index == audio_stream_index) {
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

                if (ret >= 0) {

                    if (av_buffersrc_add_frame_flags(buffersrc_ctx, frame, AV_BUFFERSRC_FLAG_KEEP_REF) < 0) {
                        av_log(((void*)0), AV_LOG_ERROR, "Error while feeding the audio filtergraph\n");
                        break;
                    }


                    while (1) {
                        ret = av_buffersink_get_frame(buffersink_ctx, filt_frame);
                        if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
                            break;
                        if (ret < 0)
                            goto end;
                        print_frame(filt_frame);
                        av_frame_unref(filt_frame);
                    }
                    av_frame_unref(frame);
                }
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
