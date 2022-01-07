
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ duration; int size; } ;
struct TYPE_8__ {scalar_t__ frame_size; scalar_t__ last_frame; int nb_samples; int seek_table; int queue_end; int queue; } ;
typedef TYPE_1__ TTAMuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int FF_PACKETLIST_FLAG_REF_PACKET ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_wl32 (int ,int ) ;
 int ff_packet_list_put (int *,int *,TYPE_2__*,int ) ;

__attribute__((used)) static int tta_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    TTAMuxContext *tta = s->priv_data;
    int ret;

    ret = ff_packet_list_put(&tta->queue, &tta->queue_end, pkt,
                             FF_PACKETLIST_FLAG_REF_PACKET);
    if (ret < 0) {
        return ret;
    }

    avio_wl32(tta->seek_table, pkt->size);
    tta->nb_samples += pkt->duration;

    if (tta->frame_size != pkt->duration) {
        if (tta->last_frame) {



            av_log(s, AV_LOG_ERROR, "Invalid frame durations\n");

            return AVERROR_INVALIDDATA;
        }


        tta->last_frame++;
    }

    return 0;
}
