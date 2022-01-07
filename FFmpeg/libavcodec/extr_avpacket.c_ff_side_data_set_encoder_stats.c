
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_QUALITY_STATS ;
 int AV_WL32 (int*,int) ;
 int AV_WL64 (int*,int ) ;
 int ENOMEM ;
 int* av_packet_get_side_data (int *,int ,int*) ;
 int* av_packet_new_side_data (int *,int ,int) ;

int ff_side_data_set_encoder_stats(AVPacket *pkt, int quality, int64_t *error, int error_count, int pict_type)
{
    uint8_t *side_data;
    int side_data_size;
    int i;

    side_data = av_packet_get_side_data(pkt, AV_PKT_DATA_QUALITY_STATS, &side_data_size);
    if (!side_data) {
        side_data_size = 4+4+8*error_count;
        side_data = av_packet_new_side_data(pkt, AV_PKT_DATA_QUALITY_STATS,
                                            side_data_size);
    }

    if (!side_data || side_data_size < 4+4+8*error_count)
        return AVERROR(ENOMEM);

    AV_WL32(side_data , quality );
    side_data[4] = pict_type;
    side_data[5] = error_count;
    for (i = 0; i<error_count; i++)
        AV_WL64(side_data+8 + 8*i , error[i]);

    return 0;
}
