
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int data; int size; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_COUNT ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int AV_RL32 (int) ;
 int CONTAINS_PAL ;
 int av_log (int *,int ,char*) ;
 int * av_packet_get_side_data (TYPE_1__*,int ,int*) ;
 int memcpy (int *,int *,int) ;

int ff_get_packet_palette(AVFormatContext *s, AVPacket *pkt, int ret, uint32_t *palette)
{
    uint8_t *side_data;
    int size;

    side_data = av_packet_get_side_data(pkt, AV_PKT_DATA_PALETTE, &size);
    if (side_data) {
        if (size != AVPALETTE_SIZE) {
            av_log(s, AV_LOG_ERROR, "Invalid palette side data\n");
            return AVERROR_INVALIDDATA;
        }
        memcpy(palette, side_data, AVPALETTE_SIZE);
        return 1;
    }

    if (ret == CONTAINS_PAL) {
        int i;
        for (i = 0; i < AVPALETTE_COUNT; i++)
            palette[i] = AV_RL32(pkt->data + pkt->size - AVPALETTE_SIZE + i*4);
        return 1;
    }

    return 0;
}
