
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* queue; } ;
struct TYPE_4__ {int recvtime; } ;
typedef TYPE_2__ RTPDemuxContext ;



int64_t ff_rtp_queued_packet_time(RTPDemuxContext *s)
{
    return s->queue ? s->queue->recvtime : 0;
}
