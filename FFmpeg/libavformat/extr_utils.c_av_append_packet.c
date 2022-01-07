
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;


 int append_packet_chunked (int *,TYPE_1__*,int) ;
 int av_get_packet (int *,TYPE_1__*,int) ;

int av_append_packet(AVIOContext *s, AVPacket *pkt, int size)
{
    if (!pkt->size)
        return av_get_packet(s, pkt, size);
    return append_packet_chunked(s, pkt, size);
}
