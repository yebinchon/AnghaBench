
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int16_t ;
struct TYPE_6__ {int queue_len; TYPE_1__* queue; } ;
struct TYPE_5__ {scalar_t__ seq; int len; struct TYPE_5__* next; int * buf; int recvtime; } ;
typedef TYPE_1__ RTPPacket ;
typedef TYPE_2__ RTPDemuxContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_RB16 (int *) ;
 int ENOMEM ;
 int av_gettime_relative () ;
 TYPE_1__* av_mallocz (int) ;

__attribute__((used)) static int enqueue_packet(RTPDemuxContext *s, uint8_t *buf, int len)
{
    uint16_t seq = AV_RB16(buf + 2);
    RTPPacket **cur = &s->queue, *packet;


    while (*cur) {
        int16_t diff = seq - (*cur)->seq;
        if (diff < 0)
            break;
        cur = &(*cur)->next;
    }

    packet = av_mallocz(sizeof(*packet));
    if (!packet)
        return AVERROR(ENOMEM);
    packet->recvtime = av_gettime_relative();
    packet->seq = seq;
    packet->len = len;
    packet->buf = buf;
    packet->next = *cur;
    *cur = packet;
    s->queue_len++;

    return 0;
}
