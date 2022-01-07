
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; scalar_t__ unwritten_size; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* premux_packet; } ;
typedef TYPE_1__ StreamInfo ;
typedef TYPE_2__ PacketDesc ;
typedef int AVFormatContext ;



__attribute__((used)) static int get_nb_frames(AVFormatContext *ctx, StreamInfo *stream, int len)
{
    int nb_frames = 0;
    PacketDesc *pkt_desc = stream->premux_packet;

    while (len > 0) {
        if (pkt_desc->size == pkt_desc->unwritten_size)
            nb_frames++;
        len -= pkt_desc->unwritten_size;
        pkt_desc = pkt_desc->next;
    }

    return nb_frames;
}
