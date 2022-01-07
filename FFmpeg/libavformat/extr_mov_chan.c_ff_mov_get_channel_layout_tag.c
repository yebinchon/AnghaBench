
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct MovChannelLayoutMap {scalar_t__ tag; scalar_t__ layout; } ;
typedef enum MovChannelLayoutTag { ____Placeholder_MovChannelLayoutTag } MovChannelLayoutTag ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_2__ {scalar_t__ codec_id; int* layouts; } ;


 scalar_t__ AV_CODEC_ID_NONE ;
 scalar_t__ MOV_CH_LAYOUT_USE_BITMAP ;
 int av_get_channel_layout_nb_channels (scalar_t__) ;
 struct MovChannelLayoutMap** mov_ch_layout_map ;
 TYPE_1__* mov_codec_ch_layouts ;

uint32_t ff_mov_get_channel_layout_tag(enum AVCodecID codec_id,
                                       uint64_t channel_layout,
                                       uint32_t *bitmap)
{
    int i, j;
    uint32_t tag = 0;
    const enum MovChannelLayoutTag *layouts = ((void*)0);


    for (i = 0; mov_codec_ch_layouts[i].codec_id != AV_CODEC_ID_NONE; i++) {
        if (mov_codec_ch_layouts[i].codec_id == codec_id)
            break;
    }
    if (mov_codec_ch_layouts[i].codec_id != AV_CODEC_ID_NONE)
        layouts = mov_codec_ch_layouts[i].layouts;

    if (layouts) {
        int channels;
        const struct MovChannelLayoutMap *layout_map;


        channels = av_get_channel_layout_nb_channels(channel_layout);
        if (channels > 9)
            channels = 0;
        layout_map = mov_ch_layout_map[channels];


        for (i = 0; layouts[i] != 0; i++) {
            if ((layouts[i] & 0xFFFF) != channels)
                continue;
            for (j = 0; layout_map[j].tag != 0; j++) {
                if (layout_map[j].tag == layouts[i] &&
                    layout_map[j].layout == channel_layout)
                    break;
            }
            if (layout_map[j].tag)
                break;
        }
        tag = layouts[i];
    }


    if (tag == 0 && channel_layout > 0 && channel_layout < 0x40000) {
        tag = MOV_CH_LAYOUT_USE_BITMAP;
        *bitmap = (uint32_t)channel_layout;
    } else
        *bitmap = 0;



    return tag;
}
