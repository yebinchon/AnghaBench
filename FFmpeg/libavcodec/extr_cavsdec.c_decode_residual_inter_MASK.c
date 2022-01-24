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
struct TYPE_5__ {int cbp; unsigned int qp; int /*<<< orphan*/  l_stride; scalar_t__* luma_scan; scalar_t__ cy; int /*<<< orphan*/  gb; int /*<<< orphan*/  qp_fixed; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int** cbp_tab ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inter_dec ; 

__attribute__((used)) static inline int FUNC5(AVSContext *h)
{
    int block;

    /* get coded block pattern */
    int cbp = FUNC4(&h->gb);
    if (cbp > 63U) {
        FUNC0(h->avctx, AV_LOG_ERROR, "illegal inter cbp %d\n", cbp);
        return AVERROR_INVALIDDATA;
    }
    h->cbp = cbp_tab[cbp][1];

    /* get quantizer */
    if (h->cbp && !h->qp_fixed)
        h->qp = (h->qp + (unsigned)FUNC3(&h->gb)) & 63;
    for (block = 0; block < 4; block++)
        if (h->cbp & (1 << block))
            FUNC1(h, &h->gb, inter_dec, 0, h->qp,
                                  h->cy + h->luma_scan[block], h->l_stride);
    FUNC2(h);

    return 0;
}