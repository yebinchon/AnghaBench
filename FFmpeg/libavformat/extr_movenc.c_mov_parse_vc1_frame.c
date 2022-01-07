
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_10__ {int size; int flags; int const* data; } ;
struct TYPE_7__ {int slices; int first_packet_seen; int first_frag_written; int first_packet_seq; int first_packet_entry; int packet_seq; int packet_entry; } ;
struct TYPE_9__ {int entry; int has_keyframes; TYPE_2__* cluster; TYPE_1__ vc1_info; } ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_3__ MOVTrack ;
typedef TYPE_4__ AVPacket ;


 int AV_PKT_FLAG_KEY ;
 int AV_RB32 (int const*) ;
 int MOV_SYNC_SAMPLE ;



 int const* find_next_marker (int const*,int const*) ;

__attribute__((used)) static void mov_parse_vc1_frame(AVPacket *pkt, MOVTrack *trk)
{
    const uint8_t *start, *next, *end = pkt->data + pkt->size;
    int seq = 0, entry = 0;
    int key = pkt->flags & AV_PKT_FLAG_KEY;
    start = find_next_marker(pkt->data, end);
    for (next = start; next < end; start = next) {
        next = find_next_marker(start + 4, end);
        switch (AV_RB32(start)) {
        case 129:
            seq = 1;
            break;
        case 130:
            entry = 1;
            break;
        case 128:
            trk->vc1_info.slices = 1;
            break;
        }
    }
    if (!trk->entry && trk->vc1_info.first_packet_seen)
        trk->vc1_info.first_frag_written = 1;
    if (!trk->entry && !trk->vc1_info.first_frag_written) {

        trk->vc1_info.first_packet_seq = seq;
        trk->vc1_info.first_packet_entry = entry;
        trk->vc1_info.first_packet_seen = 1;
    } else if ((seq && !trk->vc1_info.packet_seq) ||
               (entry && !trk->vc1_info.packet_entry)) {
        int i;
        for (i = 0; i < trk->entry; i++)
            trk->cluster[i].flags &= ~MOV_SYNC_SAMPLE;
        trk->has_keyframes = 0;
        if (seq)
            trk->vc1_info.packet_seq = 1;
        if (entry)
            trk->vc1_info.packet_entry = 1;
        if (!trk->vc1_info.first_frag_written) {

            if ((!seq || trk->vc1_info.first_packet_seq) &&
                (!entry || trk->vc1_info.first_packet_entry)) {


                trk->cluster[0].flags |= MOV_SYNC_SAMPLE;
                trk->has_keyframes = 1;
            }
        }
    }
    if (trk->vc1_info.packet_seq && trk->vc1_info.packet_entry)
        key = seq && entry;
    else if (trk->vc1_info.packet_seq)
        key = seq;
    else if (trk->vc1_info.packet_entry)
        key = entry;
    if (key) {
        trk->cluster[trk->entry].flags |= MOV_SYNC_SAMPLE;
        trk->has_keyframes++;
    }
}
