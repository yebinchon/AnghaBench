#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; scalar_t__ stream_index; int /*<<< orphan*/  pts; } ;
struct TYPE_11__ {size_t duration; TYPE_1__* index_entries; } ;
struct TYPE_10__ {size_t pts; } ;
struct TYPE_9__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ CineDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *avctx, AVPacket *pkt)
{
    CineDemuxContext *cine = avctx->priv_data;
    AVStream *st = avctx->streams[0];
    AVIOContext *pb = avctx->pb;
    int n, size, ret;

    if (cine->pts >= st->duration)
        return AVERROR_EOF;

    FUNC2(pb, st->index_entries[cine->pts].pos, SEEK_SET);
    n = FUNC1(pb);
    if (n < 8)
        return AVERROR_INVALIDDATA;
    FUNC3(pb, n - 8);
    size = FUNC1(pb);

    ret = FUNC0(pb, pkt, size);
    if (ret < 0)
        return ret;

    pkt->pts = cine->pts++;
    pkt->stream_index = 0;
    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}