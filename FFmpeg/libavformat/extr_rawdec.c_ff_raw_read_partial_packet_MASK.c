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
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; scalar_t__ stream_index; int /*<<< orphan*/  pos; } ;
struct TYPE_9__ {int raw_packet_size; } ;
typedef  TYPE_1__ FFRawDemuxerContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(AVFormatContext *s, AVPacket *pkt)
{
    FFRawDemuxerContext *raw = s->priv_data;
    int ret, size;

    size = raw->raw_packet_size;

    if (FUNC1(pkt, size) < 0)
        return FUNC0(ENOMEM);

    pkt->pos= FUNC5(s->pb);
    pkt->stream_index = 0;
    ret = FUNC4(s->pb, pkt->data, size);
    if (ret < 0) {
        FUNC2(pkt);
        return ret;
    }
    FUNC3(pkt, ret);
    return ret;
}