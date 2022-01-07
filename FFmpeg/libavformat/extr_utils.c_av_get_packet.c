
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pos; scalar_t__ size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;


 int append_packet_chunked (int *,TYPE_1__*,int) ;
 int av_init_packet (TYPE_1__*) ;
 int avio_tell (int *) ;

int av_get_packet(AVIOContext *s, AVPacket *pkt, int size)
{
    av_init_packet(pkt);
    pkt->data = ((void*)0);
    pkt->size = 0;
    pkt->pos = avio_tell(s);

    return append_packet_chunked(s, pkt, size);
}
