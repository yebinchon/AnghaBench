#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_2__* buf; scalar_t__ data; scalar_t__ size; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC2 (TYPE_2__**,scalar_t__) ; 

int FUNC3(AVPacket *pkt)
{
    int ret;

    if (pkt->buf)
        return 0;

    ret = FUNC2(&pkt->buf, pkt->size);
    if (ret < 0)
        return ret;
    FUNC0(!pkt->size || pkt->data);
    if (pkt->size)
        FUNC1(pkt->buf->data, pkt->data, pkt->size);

    pkt->data = pkt->buf->data;

    return 0;
}