#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* avctx; } ;
struct TYPE_11__ {TYPE_1__* internal; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_6__ s; int /*<<< orphan*/ * mb_type; int /*<<< orphan*/ * intra_types_hist; int /*<<< orphan*/ * deblock_coefs; int /*<<< orphan*/ * cbp_luma; int /*<<< orphan*/ * cbp_chroma; int /*<<< orphan*/ * tmp_b_block_base; } ;
struct TYPE_9__ {scalar_t__ is_copy; } ;
typedef  TYPE_2__ RV34DecContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (TYPE_2__*) ; 

int FUNC4(AVCodecContext *avctx)
{
    int err;
    RV34DecContext *r = avctx->priv_data;

    r->s.avctx = avctx;

    if (avctx->internal->is_copy) {
        r->tmp_b_block_base = NULL;
        r->cbp_chroma       = NULL;
        r->cbp_luma         = NULL;
        r->deblock_coefs    = NULL;
        r->intra_types_hist = NULL;
        r->mb_type          = NULL;

        FUNC2(&r->s);

        if ((err = FUNC1(&r->s)) < 0)
            return err;
        if ((err = FUNC3(r)) < 0) {
            FUNC0(&r->s);
            return err;
        }
    }

    return 0;
}