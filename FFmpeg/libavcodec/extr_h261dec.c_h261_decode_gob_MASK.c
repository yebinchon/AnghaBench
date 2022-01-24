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
struct TYPE_7__ {int mb_y; int mb_stride; scalar_t__ mb_x; int /*<<< orphan*/  avctx; int /*<<< orphan*/  qscale; } ;
struct TYPE_8__ {int current_mba; int mba_diff; TYPE_1__ s; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ H261Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MBA_STUFFING ; 
 int SLICE_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int FUNC4(H261Context *h)
{
    MpegEncContext *const s = &h->s;

    FUNC1(s, s->qscale);

    /* decode mb's */
    while (h->current_mba <= MBA_STUFFING) {
        int ret;
        /* DCT & quantize */
        ret = FUNC2(h);
        if (ret < 0) {
            if (ret == SLICE_END) {
                FUNC3(h, h->current_mba, 33);
                return 0;
            }
            FUNC0(s->avctx, AV_LOG_ERROR, "Error at MB: %d\n",
                   s->mb_x + s->mb_y * s->mb_stride);
            return -1;
        }

        FUNC3(h,
                               h->current_mba - h->mba_diff,
                               h->current_mba - 1);
    }

    return -1;
}