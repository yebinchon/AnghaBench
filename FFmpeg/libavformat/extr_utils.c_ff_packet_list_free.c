
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkt; struct TYPE_5__* next; } ;
typedef TYPE_1__ AVPacketList ;


 int av_freep (TYPE_1__**) ;
 int av_packet_unref (int *) ;

void ff_packet_list_free(AVPacketList **pkt_buf, AVPacketList **pkt_buf_end)
{
    AVPacketList *tmp = *pkt_buf;

    while (tmp) {
        AVPacketList *pktl = tmp;
        tmp = pktl->next;
        av_packet_unref(&pktl->pkt);
        av_freep(&pktl);
    }
    *pkt_buf = ((void*)0);
    *pkt_buf_end = ((void*)0);
}
