#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  data; TYPE_2__* buf; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_2__**,int) ; 

int FUNC2(AVPacket *pkt, int size)
{
    AVBufferRef *buf = NULL;
    int ret = FUNC1(&buf, size);
    if (ret < 0)
        return ret;

    FUNC0(pkt);
    pkt->buf      = buf;
    pkt->data     = buf->data;
    pkt->size     = size;

    return 0;
}