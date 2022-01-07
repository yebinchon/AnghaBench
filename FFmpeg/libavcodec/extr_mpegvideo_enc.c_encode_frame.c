
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int member_0; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_init_packet (TYPE_1__*) ;
 int av_packet_unref (TYPE_1__*) ;
 int avcodec_receive_packet (int *,TYPE_1__*) ;
 int avcodec_send_frame (int *,int *) ;

__attribute__((used)) static int encode_frame(AVCodecContext *c, AVFrame *frame)
{
    AVPacket pkt = { 0 };
    int ret;
    int size = 0;

    av_init_packet(&pkt);

    ret = avcodec_send_frame(c, frame);
    if (ret < 0)
        return ret;

    do {
        ret = avcodec_receive_packet(c, &pkt);
        if (ret >= 0) {
            size += pkt.size;
            av_packet_unref(&pkt);
        } else if (ret < 0 && ret != AVERROR(EAGAIN) && ret != AVERROR_EOF)
            return ret;
    } while (ret >= 0);

    return size;
}
