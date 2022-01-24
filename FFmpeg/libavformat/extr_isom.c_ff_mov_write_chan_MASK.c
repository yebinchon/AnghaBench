#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ channel_layout; scalar_t__ layout_tag; } ;
typedef  TYPE_1__ MovChannelLayout ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* mov_channel_layout ; 

void FUNC1(AVIOContext *pb, int64_t channel_layout)
{
    const MovChannelLayout *layouts;
    uint32_t layout_tag = 0;

    for (layouts = mov_channel_layout; layouts->channel_layout; layouts++)
        if (channel_layout == layouts->channel_layout) {
            layout_tag = layouts->layout_tag;
            break;
        }

    if (layout_tag) {
        FUNC0(pb, layout_tag); // mChannelLayoutTag
        FUNC0(pb, 0);          // mChannelBitmap
    } else {
        FUNC0(pb, 0x10000);    // kCAFChannelLayoutTag_UseChannelBitmap
        FUNC0(pb, channel_layout);
    }
    FUNC0(pb, 0);              // mNumberChannelDescriptions
}