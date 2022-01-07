
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {size_t stream_index; } ;
struct TYPE_9__ {TYPE_2__* elem; } ;
struct TYPE_11__ {int ctx; int queue_end; scalar_t__ queue; TYPE_1__ tracks; } ;
struct TYPE_10__ {scalar_t__ has_palette; int palette; } ;
typedef TYPE_2__ MatroskaTrack ;
typedef TYPE_3__ MatroskaDemuxContext ;
typedef TYPE_4__ AVPacket ;


 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int av_log (int ,int ,char*) ;
 int * av_packet_new_side_data (TYPE_4__*,int ,int ) ;
 int ff_packet_list_get (scalar_t__*,int *,TYPE_4__*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int matroska_deliver_packet(MatroskaDemuxContext *matroska,
                                   AVPacket *pkt)
{
    if (matroska->queue) {
        MatroskaTrack *tracks = matroska->tracks.elem;
        MatroskaTrack *track;

        ff_packet_list_get(&matroska->queue, &matroska->queue_end, pkt);
        track = &tracks[pkt->stream_index];
        if (track->has_palette) {
            uint8_t *pal = av_packet_new_side_data(pkt, AV_PKT_DATA_PALETTE, AVPALETTE_SIZE);
            if (!pal) {
                av_log(matroska->ctx, AV_LOG_ERROR, "Cannot append palette to packet\n");
            } else {
                memcpy(pal, track->palette, AVPALETTE_SIZE);
            }
            track->has_palette = 0;
        }
        return 0;
    }

    return -1;
}
