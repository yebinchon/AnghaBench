#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {int pts; int dts; int /*<<< orphan*/  flags; scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *ctx, AVPacket *pkt)
{
    AVIOContext *pb = ctx->pb;
    uint16_t keyframe;
    uint32_t size, timestamp;
    int ret;

    FUNC3(pb, 1); /* one byte has been read ahead */
    FUNC3(pb, 2);
    FUNC3(pb, 2);
    keyframe = FUNC1(pb);
    size     = FUNC2(pb);
    FUNC3(pb, 4);
    FUNC3(pb, 4);
    timestamp = FUNC2(pb);

    if (!size)
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC0(pb, pkt, size)) < 0)
        return ret;

    FUNC3(pb, 1); /* Read ahead one byte of struct size like read_header */

    pkt->pts          = timestamp;
    pkt->dts          = timestamp;
    pkt->stream_index = 0;

    /* Some aMsn generated videos (or was it Mercury Messenger?) don't set
     * this bit and rely on the codec to get keyframe information */
    if (keyframe & 1)
        pkt->flags |= AV_PKT_FLAG_KEY;

    return HEADER_SIZE + size;
}