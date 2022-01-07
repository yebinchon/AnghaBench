
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {TYPE_2__** streams; } ;
struct TYPE_13__ {scalar_t__ stream_index; scalar_t__ size; int * data; } ;
struct TYPE_12__ {int time_base; } ;
struct TYPE_11__ {int time_base; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 char* av_err2str (int) ;
 int av_init_packet (TYPE_3__*) ;
 int av_interleaved_write_frame (TYPE_4__*,TYPE_3__*) ;
 int av_packet_rescale_ts (TYPE_3__*,int ,int ) ;
 int avcodec_receive_packet (int ,TYPE_3__*) ;
 int avcodec_send_frame (int ,int *) ;
 int encoder_ctx ;
 int fprintf (int ,char*,char*) ;
 TYPE_5__* ifmt_ctx ;
 TYPE_4__* ofmt_ctx ;
 int stderr ;
 size_t video_stream ;

__attribute__((used)) static int encode_write(AVFrame *frame)
{
    int ret = 0;
    AVPacket enc_pkt;

    av_init_packet(&enc_pkt);
    enc_pkt.data = ((void*)0);
    enc_pkt.size = 0;

    if ((ret = avcodec_send_frame(encoder_ctx, frame)) < 0) {
        fprintf(stderr, "Error during encoding. Error code: %s\n", av_err2str(ret));
        goto end;
    }
    while (1) {
        ret = avcodec_receive_packet(encoder_ctx, &enc_pkt);
        if (ret)
            break;

        enc_pkt.stream_index = 0;
        av_packet_rescale_ts(&enc_pkt, ifmt_ctx->streams[video_stream]->time_base,
                             ofmt_ctx->streams[0]->time_base);
        ret = av_interleaved_write_frame(ofmt_ctx, &enc_pkt);
        if (ret < 0) {
            fprintf(stderr, "Error during writing data to output file. "
                    "Error code: %s\n", av_err2str(ret));
            return -1;
        }
    }

end:
    if (ret == AVERROR_EOF)
        return 0;
    ret = ((ret == AVERROR(EAGAIN)) ? 0:-1);
    return ret;
}
