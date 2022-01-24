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
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  data_ref; } ;
typedef  TYPE_1__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC4(CodedBitstreamContext *ctx,
                        AVPacket *pkt,
                        CodedBitstreamFragment *frag)
{
    AVBufferRef *buf;
    int err;

    err = FUNC3(ctx, frag);
    if (err < 0)
        return err;

    buf = FUNC1(frag->data_ref);
    if (!buf)
        return FUNC0(ENOMEM);

    FUNC2(&pkt->buf);

    pkt->buf  = buf;
    pkt->data = frag->data;
    pkt->size = frag->data_size;

    return 0;
}