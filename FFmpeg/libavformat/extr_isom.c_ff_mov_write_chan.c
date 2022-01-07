
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ channel_layout; scalar_t__ layout_tag; } ;
typedef TYPE_1__ MovChannelLayout ;
typedef int AVIOContext ;


 int avio_wb32 (int *,scalar_t__) ;
 TYPE_1__* mov_channel_layout ;

void ff_mov_write_chan(AVIOContext *pb, int64_t channel_layout)
{
    const MovChannelLayout *layouts;
    uint32_t layout_tag = 0;

    for (layouts = mov_channel_layout; layouts->channel_layout; layouts++)
        if (channel_layout == layouts->channel_layout) {
            layout_tag = layouts->layout_tag;
            break;
        }

    if (layout_tag) {
        avio_wb32(pb, layout_tag);
        avio_wb32(pb, 0);
    } else {
        avio_wb32(pb, 0x10000);
        avio_wb32(pb, channel_layout);
    }
    avio_wb32(pb, 0);
}
