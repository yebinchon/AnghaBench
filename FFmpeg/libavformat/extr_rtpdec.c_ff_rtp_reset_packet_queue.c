
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ prev_ret; scalar_t__ queue_len; scalar_t__ seq; TYPE_1__* queue; } ;
struct TYPE_5__ {struct TYPE_5__* buf; struct TYPE_5__* next; } ;
typedef TYPE_1__ RTPPacket ;
typedef TYPE_2__ RTPDemuxContext ;


 int av_freep (TYPE_1__**) ;

void ff_rtp_reset_packet_queue(RTPDemuxContext *s)
{
    while (s->queue) {
        RTPPacket *next = s->queue->next;
        av_freep(&s->queue->buf);
        av_freep(&s->queue);
        s->queue = next;
    }
    s->seq = 0;
    s->queue_len = 0;
    s->prev_ret = 0;
}
