
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pkt ;
struct TYPE_3__ {int input_ref; int packet_fifo; } ;
typedef TYPE_1__ QSVOtherContext ;
typedef int AVPacket ;


 int av_fifo_generic_read (int ,int *,int,int *) ;
 int av_fifo_size (int ) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void qsv_clear_buffers(QSVOtherContext *s)
{
    AVPacket pkt;
    while (av_fifo_size(s->packet_fifo) >= sizeof(pkt)) {
        av_fifo_generic_read(s->packet_fifo, &pkt, sizeof(pkt), ((void*)0));
        av_packet_unref(&pkt);
    }

    av_packet_unref(&s->input_ref);
}
