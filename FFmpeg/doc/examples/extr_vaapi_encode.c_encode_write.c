
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int * data; scalar_t__ stream_index; } ;
typedef int FILE ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int EAGAIN ;
 char* av_err2str (int) ;
 int av_init_packet (TYPE_1__*) ;
 int av_packet_unref (TYPE_1__*) ;
 int avcodec_receive_packet (int *,TYPE_1__*) ;
 int avcodec_send_frame (int *,int *) ;
 int fprintf (int ,char*,char*) ;
 int fwrite (int *,scalar_t__,int,int *) ;
 int stderr ;

__attribute__((used)) static int encode_write(AVCodecContext *avctx, AVFrame *frame, FILE *fout)
{
    int ret = 0;
    AVPacket enc_pkt;

    av_init_packet(&enc_pkt);
    enc_pkt.data = ((void*)0);
    enc_pkt.size = 0;

    if ((ret = avcodec_send_frame(avctx, frame)) < 0) {
        fprintf(stderr, "Error code: %s\n", av_err2str(ret));
        goto end;
    }
    while (1) {
        ret = avcodec_receive_packet(avctx, &enc_pkt);
        if (ret)
            break;

        enc_pkt.stream_index = 0;
        ret = fwrite(enc_pkt.data, enc_pkt.size, 1, fout);
        av_packet_unref(&enc_pkt);
    }

end:
    ret = ((ret == AVERROR(EAGAIN)) ? 0 : -1);
    return ret;
}
