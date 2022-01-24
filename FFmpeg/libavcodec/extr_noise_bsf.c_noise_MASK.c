#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int* data; } ;
struct TYPE_10__ {int amount; int state; int dropamount; } ;
typedef  TYPE_1__ NoiseContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVBSFContext *ctx, AVPacket *pkt)
{
    NoiseContext *s = ctx->priv_data;
    int amount = s->amount > 0 ? s->amount : (s->state % 10001 + 1);
    int i, ret = 0;

    if (amount <= 0)
        return FUNC0(EINVAL);

    ret = FUNC3(ctx, pkt);
    if (ret < 0)
        return ret;

    if (s->dropamount > 0 && s->state % s->dropamount == 0) {
        s->state++;
        FUNC2(pkt);
        return FUNC0(EAGAIN);
    }

    ret = FUNC1(pkt);
    if (ret < 0)
        goto fail;

    for (i = 0; i < pkt->size; i++) {
        s->state += pkt->data[i] + 1;
        if (s->state % amount == 0)
            pkt->data[i] = s->state;
    }
fail:
    if (ret < 0)
        FUNC2(pkt);

    return ret;
}