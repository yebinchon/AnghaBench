#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* planes; } ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  bytesused; TYPE_2__ m; int /*<<< orphan*/  type; } ;
struct TYPE_18__ {TYPE_4__* context; TYPE_3__ buf; } ;
typedef  TYPE_5__ V4L2Buffer ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  dts; int /*<<< orphan*/  flags; TYPE_9__* buf; int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int /*<<< orphan*/  bytesused; } ;
typedef  TYPE_6__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_CORRUPT ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int V4L2_BUF_FLAG_ERROR ; 
 int V4L2_BUF_FLAG_KEYFRAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

int FUNC6(AVPacket *pkt, V4L2Buffer *avbuf)
{
    int ret;

    FUNC2(pkt);
    ret = FUNC4(avbuf, 0, &pkt->buf);
    if (ret)
        return ret;

    pkt->size = FUNC0(avbuf->buf.type) ? avbuf->buf.m.planes[0].bytesused : avbuf->buf.bytesused;
    pkt->data = pkt->buf->data;

    if (avbuf->buf.flags & V4L2_BUF_FLAG_KEYFRAME)
        pkt->flags |= AV_PKT_FLAG_KEY;

    if (avbuf->buf.flags & V4L2_BUF_FLAG_ERROR) {
        FUNC1(FUNC3(avbuf), AV_LOG_ERROR, "%s driver encode error\n", avbuf->context->name);
        pkt->flags |= AV_PKT_FLAG_CORRUPT;
    }

    pkt->dts = pkt->pts = FUNC5(avbuf);

    return 0;
}