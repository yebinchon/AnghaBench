
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iec61883_data {int packets; TYPE_1__* queue_first; int mpeg_demux; } ;
struct TYPE_4__ {struct TYPE_4__* buf; struct TYPE_4__* next; int len; } ;
typedef TYPE_1__ DVPacket ;
typedef int AVPacket ;


 int av_freep (TYPE_1__**) ;
 int avpriv_mpegts_parse_packet (int ,int *,TYPE_1__*,int ) ;

__attribute__((used)) static int iec61883_parse_queue_hdv(struct iec61883_data *dv, AVPacket *pkt)
{
    DVPacket *packet;
    int size;

    while (dv->queue_first) {
        packet = dv->queue_first;
        size = avpriv_mpegts_parse_packet(dv->mpeg_demux, pkt, packet->buf,
                                          packet->len);
        dv->queue_first = packet->next;
        av_freep(&packet->buf);
        av_freep(&packet);
        dv->packets--;

        if (size > 0)
            return size;
    }

    return -1;
}
