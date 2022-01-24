#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(AVBSFContext *ctx, AVPacket *pkt)
{
    int ret;

    ret = FUNC0(ctx, pkt);
    if (ret < 0)
        return ret;

    while (pkt->size > 0 && !pkt->data[pkt->size - 1])
        pkt->size--;

    return 0;
}