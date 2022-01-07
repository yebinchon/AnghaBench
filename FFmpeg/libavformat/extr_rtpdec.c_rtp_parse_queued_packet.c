
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ queue_len; TYPE_1__* queue; scalar_t__ seq; int ic; } ;
struct TYPE_8__ {struct TYPE_8__* buf; struct TYPE_8__* next; int len; scalar_t__ seq; } ;
typedef TYPE_1__ RTPPacket ;
typedef TYPE_2__ RTPDemuxContext ;
typedef int AVPacket ;


 int AV_LOG_WARNING ;
 int av_freep (TYPE_1__**) ;
 int av_log (int ,int ,char*,scalar_t__) ;
 int has_next_packet (TYPE_2__*) ;
 int rtp_parse_packet_internal (TYPE_2__*,int *,TYPE_1__*,int ) ;

__attribute__((used)) static int rtp_parse_queued_packet(RTPDemuxContext *s, AVPacket *pkt)
{
    int rv;
    RTPPacket *next;

    if (s->queue_len <= 0)
        return -1;

    if (!has_next_packet(s))
        av_log(s->ic, AV_LOG_WARNING,
               "RTP: missed %d packets\n", s->queue->seq - s->seq - 1);


    rv = rtp_parse_packet_internal(s, pkt, s->queue->buf, s->queue->len);
    next = s->queue->next;
    av_freep(&s->queue->buf);
    av_freep(&s->queue);
    s->queue = next;
    s->queue_len--;
    return rv;
}
