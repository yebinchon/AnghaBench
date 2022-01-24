#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 

int FUNC1(AVPacket *pkt)
{
    AVPacket tmp_pkt;

    if (!pkt->buf && pkt->data) {
        tmp_pkt = *pkt;
        return FUNC0(pkt, &tmp_pkt, 1);
    }
    return 0;
}