#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  pos; scalar_t__ stream_index; int /*<<< orphan*/  flags; scalar_t__ data; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* read_block ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ SDSContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_CORRUPT ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *ctx, AVPacket *pkt)
{
    SDSContext *s = ctx->priv_data;
    AVIOContext *pb = ctx->pb;
    int64_t pos;
    int ret;

    if (FUNC1(pb))
        return AVERROR_EOF;

    pos = FUNC6(pb);
    if (FUNC3(pb) != 0xF07E)
        return AVERROR_INVALIDDATA;
    FUNC5(pb, 3);

    ret = FUNC0(pkt, s->size);
    if (ret < 0)
        return ret;

    ret = FUNC4(pb, s->data, 120);

    s->read_block(s->data, (uint32_t *)pkt->data);

    FUNC5(pb, 1); // checksum
    if (FUNC2(pb) != 0xF7)
        return AVERROR_INVALIDDATA;

    pkt->flags &= ~AV_PKT_FLAG_CORRUPT;
    pkt->stream_index = 0;
    pkt->pos = pos;

    return ret;
}