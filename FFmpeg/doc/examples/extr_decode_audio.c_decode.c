
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int channels; int sample_fmt; } ;
struct TYPE_8__ {int nb_samples; scalar_t__* data; } ;
typedef int FILE ;
typedef int AVPacket ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_get_bytes_per_sample (int ) ;
 int avcodec_receive_frame (TYPE_2__*,TYPE_1__*) ;
 int avcodec_send_packet (TYPE_2__*,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fwrite (scalar_t__,int,int,int *) ;
 int stderr ;

__attribute__((used)) static void decode(AVCodecContext *dec_ctx, AVPacket *pkt, AVFrame *frame,
                   FILE *outfile)
{
    int i, ch;
    int ret, data_size;


    ret = avcodec_send_packet(dec_ctx, pkt);
    if (ret < 0) {
        fprintf(stderr, "Error submitting the packet to the decoder\n");
        exit(1);
    }


    while (ret >= 0) {
        ret = avcodec_receive_frame(dec_ctx, frame);
        if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
            return;
        else if (ret < 0) {
            fprintf(stderr, "Error during decoding\n");
            exit(1);
        }
        data_size = av_get_bytes_per_sample(dec_ctx->sample_fmt);
        if (data_size < 0) {

            fprintf(stderr, "Failed to calculate data size\n");
            exit(1);
        }
        for (i = 0; i < frame->nb_samples; i++)
            for (ch = 0; ch < dec_ctx->channels; ch++)
                fwrite(frame->data[ch] + data_size*i, 1, data_size, outfile);
    }
}
