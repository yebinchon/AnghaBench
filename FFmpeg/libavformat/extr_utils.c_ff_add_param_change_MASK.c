#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_PARAM_CHANGE ; 
 int AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT ; 
 int AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT ; 
 int AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS ; 
 int AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int FUNC4(AVPacket *pkt, int32_t channels,
                        uint64_t channel_layout, int32_t sample_rate,
                        int32_t width, int32_t height)
{
    uint32_t flags = 0;
    int size = 4;
    uint8_t *data;
    if (!pkt)
        return FUNC0(EINVAL);
    if (channels) {
        size  += 4;
        flags |= AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_COUNT;
    }
    if (channel_layout) {
        size  += 8;
        flags |= AV_SIDE_DATA_PARAM_CHANGE_CHANNEL_LAYOUT;
    }
    if (sample_rate) {
        size  += 4;
        flags |= AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE;
    }
    if (width || height) {
        size  += 8;
        flags |= AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS;
    }
    data = FUNC1(pkt, AV_PKT_DATA_PARAM_CHANGE, size);
    if (!data)
        return FUNC0(ENOMEM);
    FUNC2(&data, flags);
    if (channels)
        FUNC2(&data, channels);
    if (channel_layout)
        FUNC3(&data, channel_layout);
    if (sample_rate)
        FUNC2(&data, sample_rate);
    if (width || height) {
        FUNC2(&data, width);
        FUNC2(&data, height);
    }
    return 0;
}