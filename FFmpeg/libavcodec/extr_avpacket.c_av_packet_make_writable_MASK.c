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
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; TYPE_2__* buf; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ ) ; 

int FUNC5(AVPacket *pkt)
{
    AVBufferRef *buf = NULL;
    int ret;

    if (pkt->buf && FUNC1(pkt->buf))
        return 0;

    ret = FUNC4(&buf, pkt->size);
    if (ret < 0)
        return ret;
    FUNC0(!pkt->size || pkt->data);
    if (pkt->size)
        FUNC3(buf->data, pkt->data, pkt->size);

    FUNC2(&pkt->buf);
    pkt->buf  = buf;
    pkt->data = buf->data;

    return 0;
}