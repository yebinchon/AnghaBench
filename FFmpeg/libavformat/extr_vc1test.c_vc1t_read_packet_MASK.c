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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {TYPE_2__** streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {int pos; int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  pts; } ;
struct TYPE_8__ {int den; } ;
struct TYPE_9__ {TYPE_1__ time_base; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s,
                           AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    int frame_size;
    int keyframe = 0;
    uint32_t pts;

    if(FUNC2(pb))
        return FUNC0(EIO);

    frame_size = FUNC4(pb);
    if(FUNC3(pb) & 0x80)
        keyframe = 1;
    pts = FUNC5(pb);
    if(FUNC1(pb, pkt, frame_size) < 0)
        return FUNC0(EIO);
    if(s->streams[0]->time_base.den == 1000)
        pkt->pts = pts;
    pkt->flags |= keyframe ? AV_PKT_FLAG_KEY : 0;
    pkt->pos -= 8;

    return pkt->size;
}