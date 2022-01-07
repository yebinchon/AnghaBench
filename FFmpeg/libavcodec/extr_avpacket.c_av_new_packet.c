
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int size; int data; TYPE_2__* buf; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVBufferRef ;


 int av_init_packet (TYPE_1__*) ;
 int packet_alloc (TYPE_2__**,int) ;

int av_new_packet(AVPacket *pkt, int size)
{
    AVBufferRef *buf = ((void*)0);
    int ret = packet_alloc(&buf, size);
    if (ret < 0)
        return ret;

    av_init_packet(pkt);
    pkt->buf = buf;
    pkt->data = buf->data;
    pkt->size = size;

    return 0;
}
