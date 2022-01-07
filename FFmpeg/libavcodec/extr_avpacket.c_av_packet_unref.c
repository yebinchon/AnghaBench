
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int * data; int buf; } ;
typedef TYPE_1__ AVPacket ;


 int av_buffer_unref (int *) ;
 int av_init_packet (TYPE_1__*) ;
 int av_packet_free_side_data (TYPE_1__*) ;

void av_packet_unref(AVPacket *pkt)
{
    av_packet_free_side_data(pkt);
    av_buffer_unref(&pkt->buf);
    av_init_packet(pkt);
    pkt->data = ((void*)0);
    pkt->size = 0;
}
