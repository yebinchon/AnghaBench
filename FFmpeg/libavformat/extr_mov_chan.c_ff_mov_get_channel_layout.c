
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct MovChannelLayoutMap {int tag; int layout; } ;


 int MOV_CH_LAYOUT_USE_BITMAP ;
 int MOV_CH_LAYOUT_USE_DESCRIPTIONS ;
 struct MovChannelLayoutMap** mov_ch_layout_map ;

uint64_t ff_mov_get_channel_layout(uint32_t tag, uint32_t bitmap)
{
    int i, channels;
    const struct MovChannelLayoutMap *layout_map;


    if (tag == MOV_CH_LAYOUT_USE_DESCRIPTIONS)
        return 0;


    if (tag == MOV_CH_LAYOUT_USE_BITMAP)
        return bitmap < 0x40000 ? bitmap : 0;


    channels = tag & 0xFFFF;
    if (channels > 9)
        channels = 0;
    layout_map = mov_ch_layout_map[channels];


    for (i = 0; layout_map[i].tag != 0; i++) {
        if (layout_map[i].tag == tag)
            break;
    }
    return layout_map[i].layout;
}
