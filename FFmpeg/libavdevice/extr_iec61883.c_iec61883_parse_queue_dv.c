
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct iec61883_data {int packets; TYPE_1__* queue_first; int dv_demux; } ;
struct TYPE_11__ {int data; int size; } ;
struct TYPE_10__ {struct TYPE_10__* buf; struct TYPE_10__* next; int len; } ;
typedef TYPE_1__ DVPacket ;
typedef TYPE_2__ AVPacket ;


 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;
 scalar_t__ av_packet_from_data (TYPE_2__*,int ,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 int avpriv_dv_get_packet (int ,TYPE_2__*) ;
 int avpriv_dv_produce_packet (int ,TYPE_2__*,TYPE_1__*,int ,int) ;

__attribute__((used)) static int iec61883_parse_queue_dv(struct iec61883_data *dv, AVPacket *pkt)
{
    DVPacket *packet;
    int size;

    size = avpriv_dv_get_packet(dv->dv_demux, pkt);
    if (size > 0)
        return size;

    packet = dv->queue_first;
    if (!packet)
        return -1;

    size = avpriv_dv_produce_packet(dv->dv_demux, pkt,
                                    packet->buf, packet->len, -1);
    dv->queue_first = packet->next;
    if (size < 0)
        av_free(packet->buf);
    av_free(packet);
    dv->packets--;

    if (size < 0)
        return -1;

    if (av_packet_from_data(pkt, pkt->data, pkt->size) < 0) {
        av_freep(&pkt->data);
        av_packet_unref(pkt);
        return -1;
    }

    return size;
}
