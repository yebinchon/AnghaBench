#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ stream_index; } ;
struct TYPE_9__ {scalar_t__ data_end; scalar_t__ mlast_frame; } ;
typedef  TYPE_1__ TAKDemuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    TAKDemuxContext *tc = s->priv_data;
    int ret;

    if (tc->mlast_frame) {
        AVIOContext *pb = s->pb;
        int64_t size, left;

        left = tc->data_end - FUNC2(pb);
        size = FUNC0(left, 1024);
        if (size <= 0)
            return AVERROR_EOF;

        ret = FUNC1(pb, pkt, size);
        if (ret < 0)
            return ret;

        pkt->stream_index = 0;
    } else {
        ret = FUNC3(s, pkt);
    }

    return ret;
}