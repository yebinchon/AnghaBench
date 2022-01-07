
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int data; TYPE_2__* buf; int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVBufferRef ;


 int av_assert1 (int) ;
 scalar_t__ av_buffer_is_writable (TYPE_2__*) ;
 int av_buffer_unref (TYPE_2__**) ;
 int memcpy (int ,int ,int ) ;
 int packet_alloc (TYPE_2__**,int ) ;

int av_packet_make_writable(AVPacket *pkt)
{
    AVBufferRef *buf = ((void*)0);
    int ret;

    if (pkt->buf && av_buffer_is_writable(pkt->buf))
        return 0;

    ret = packet_alloc(&buf, pkt->size);
    if (ret < 0)
        return ret;
    av_assert1(!pkt->size || pkt->data);
    if (pkt->size)
        memcpy(buf->data, pkt->data, pkt->size);

    av_buffer_unref(&pkt->buf);
    pkt->buf = buf;
    pkt->data = buf->data;

    return 0;
}
