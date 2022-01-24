#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ V4L2Buffer ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  pts; int /*<<< orphan*/  buf; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_KEYFRAME ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(const AVPacket *pkt, V4L2Buffer *out)
{
    int ret;

    ret = FUNC0(out, 0, pkt->data, pkt->size, 0, pkt->buf);
    if (ret)
        return ret;

    FUNC1(out, pkt->pts);

    if (pkt->flags & AV_PKT_FLAG_KEY)
        out->flags = V4L2_BUF_FLAG_KEYFRAME;

    return 0;
}