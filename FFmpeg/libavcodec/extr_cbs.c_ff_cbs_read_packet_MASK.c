#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; scalar_t__ buf; } ;
struct TYPE_16__ {TYPE_1__* codec; } ;
struct TYPE_15__ {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  data_ref; } ;
struct TYPE_14__ {int (* split_fragment ) (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  TYPE_3__ CodedBitstreamContext ;
typedef  TYPE_4__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC5(CodedBitstreamContext *ctx,
                       CodedBitstreamFragment *frag,
                       const AVPacket *pkt)
{
    int err;

    if (pkt->buf) {
        frag->data_ref = FUNC1(pkt->buf);
        if (!frag->data_ref)
            return FUNC0(ENOMEM);

        frag->data      = pkt->data;
        frag->data_size = pkt->size;

    } else {
        err = FUNC2(ctx, frag, pkt->data, pkt->size);
        if (err < 0)
            return err;
    }

    err = ctx->codec->split_fragment(ctx, frag, 0);
    if (err < 0)
        return err;

    return FUNC3(ctx, frag);
}