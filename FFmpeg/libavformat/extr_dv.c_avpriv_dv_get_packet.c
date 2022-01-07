
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_5__ {int ach; TYPE_2__* audio_pkt; scalar_t__* ast; } ;
typedef TYPE_1__ DVDemuxContext ;
typedef TYPE_2__ AVPacket ;



int avpriv_dv_get_packet(DVDemuxContext *c, AVPacket *pkt)
{
    int size = -1;
    int i;

    for (i = 0; i < c->ach; i++) {
        if (c->ast[i] && c->audio_pkt[i].size) {
            *pkt = c->audio_pkt[i];
            c->audio_pkt[i].size = 0;
            size = pkt->size;
            break;
        }
    }

    return size;
}
