#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int data; int size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_COUNT ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTAINS_PAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC4(AVFormatContext *s, AVPacket *pkt, int ret, uint32_t *palette)
{
    uint8_t *side_data;
    int size;

    side_data = FUNC2(pkt, AV_PKT_DATA_PALETTE, &size);
    if (side_data) {
        if (size != AVPALETTE_SIZE) {
            FUNC1(s, AV_LOG_ERROR, "Invalid palette side data\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC3(palette, side_data, AVPALETTE_SIZE);
        return 1;
    }

    if (ret == CONTAINS_PAL) {
        int i;
        for (i = 0; i < AVPALETTE_COUNT; i++)
            palette[i] = FUNC0(pkt->data + pkt->size - AVPALETTE_SIZE + i*4);
        return 1;
    }

    return 0;
}