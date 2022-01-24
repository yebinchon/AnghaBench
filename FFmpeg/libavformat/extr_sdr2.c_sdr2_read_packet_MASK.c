#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int stream_index; int /*<<< orphan*/  flags; scalar_t__ pos; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FIRST ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  header ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AVPacket *pkt)
{
    int64_t pos;
    unsigned next;
    int flags, ret = 0, is_video;

    pos = FUNC8(s->pb);

    flags = FUNC6(s->pb);
    FUNC7(s->pb, 4);

    next = FUNC6(s->pb);
    if (next <= 52)
        return AVERROR_INVALIDDATA;

    FUNC7(s->pb, 6);
    is_video = FUNC6(s->pb);
    FUNC7(s->pb, 30);

    if (pos == FIRST) {
        if (FUNC2(pkt, next - 52 + 24) < 0)
            return FUNC0(ENOMEM);
        FUNC9(pkt->data, header, 24);
        ret = FUNC5(s->pb, pkt->data + 24, next - 52);
        if (ret < 0) {
            FUNC3(pkt);
            return ret;
        }
        FUNC4(pkt, ret + 24);
    } else {
        ret = FUNC1(s->pb, pkt, next - 52);
    }
    pkt->stream_index = !!is_video;
    pkt->pos = pos;
    if (flags & (1 << 12))
        pkt->flags |= AV_PKT_FLAG_KEY;

    return ret;
}