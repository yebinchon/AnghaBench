#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {TYPE_2__** streams; int /*<<< orphan*/  pb; } ;
struct TYPE_10__ {int duration; int pts; int /*<<< orphan*/  pos; scalar_t__ stream_index; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {scalar_t__ codec_id; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_ATRAC3AL ; 
 int /*<<< orphan*/  AV_PKT_FLAG_CORRUPT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,char,char,char) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, AVPacket *pkt)
{
    int64_t pos = FUNC7(s->pb);
    int ret, pts;
    int packet_size;
    unsigned tag;

    if (FUNC2(s->pb))
        return AVERROR_EOF;

    tag = FUNC4(s->pb);
    if (tag == 0)
        return AVERROR_EOF;
    else if (tag != FUNC0(0,'B','L','K'))
        return AVERROR_INVALIDDATA;

    FUNC6(s->pb, 1);
    packet_size = FUNC3(s->pb);
    FUNC6(s->pb, 2);
    pts = FUNC5(s->pb);
    FUNC6(s->pb, 12);
    ret = FUNC1(s->pb, pkt, packet_size);
    if (ret < packet_size)
        pkt->flags |= AV_PKT_FLAG_CORRUPT;

    if (ret < 0)
        return ret;
    if (!ret)
        return AVERROR_EOF;

    pkt->stream_index = 0;
    pkt->pos = pos;
    if (s->streams[0]->codecpar->codec_id == AV_CODEC_ID_ATRAC3AL) {
        pkt->duration = 1024;
        pkt->pts = pts * 1024LL;
    } else {
        pkt->duration = 2048;
        pkt->pts = pts * 2048LL;
    }

    return ret;
}