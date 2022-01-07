
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int pkt; } ;
typedef TYPE_1__ AVPacketList ;
typedef int AVPacket ;


 int av_assert0 (TYPE_1__*) ;
 int av_freep (TYPE_1__**) ;

int ff_packet_list_get(AVPacketList **pkt_buffer,
                       AVPacketList **pkt_buffer_end,
                       AVPacket *pkt)
{
    AVPacketList *pktl;
    av_assert0(*pkt_buffer);
    pktl = *pkt_buffer;
    *pkt = pktl->pkt;
    *pkt_buffer = pktl->next;
    if (!pktl->next)
        *pkt_buffer_end = ((void*)0);
    av_freep(&pktl);
    return 0;
}
