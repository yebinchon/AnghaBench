
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int buf ;
struct TYPE_9__ {int frame_number; } ;
struct TYPE_8__ {int height; int width; int * linesize; int * data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int avcodec_receive_frame (TYPE_2__*,TYPE_1__*) ;
 int avcodec_send_packet (TYPE_2__*,int *) ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int pgm_save (int ,int ,int ,int ,char*) ;
 int printf (char*,int) ;
 int snprintf (char*,int,char*,char const*,int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void decode(AVCodecContext *dec_ctx, AVFrame *frame, AVPacket *pkt,
                   const char *filename)
{
    char buf[1024];
    int ret;

    ret = avcodec_send_packet(dec_ctx, pkt);
    if (ret < 0) {
        fprintf(stderr, "Error sending a packet for decoding\n");
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

        printf("saving frame %3d\n", dec_ctx->frame_number);
        fflush(stdout);



        snprintf(buf, sizeof(buf), "%s-%d", filename, dec_ctx->frame_number);
        pgm_save(frame->data[0], frame->linesize[0],
                 frame->width, frame->height, buf);
    }
}
