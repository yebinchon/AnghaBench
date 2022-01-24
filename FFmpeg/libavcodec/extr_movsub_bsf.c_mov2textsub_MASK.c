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
struct TYPE_5__ {int size; int data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(AVBSFContext *ctx, AVPacket *pkt)
{
    int ret = 0;

    ret = FUNC3(ctx, pkt);
    if (ret < 0)
        return ret;

    if (pkt->size < 2) {
       FUNC2(pkt);
       return AVERROR_INVALIDDATA;
    }

    pkt->size  = FUNC1(pkt->size - 2, FUNC0(pkt->data));
    pkt->data += 2;

    return 0;
}