#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ buf ;
struct TYPE_15__ {int error; } ;
struct TYPE_14__ {int /*<<< orphan*/  num_refs; int /*<<< orphan*/  avctx; scalar_t__ old_delta_quant; scalar_t__ codeblock_mode; } ;
struct TYPE_13__ {int quant; int stride; scalar_t__ pshift; int /*<<< orphan*/ * ibuf; } ;
typedef  TYPE_1__ SubBand ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ DiracContext ;
typedef  TYPE_3__ DiracArith ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CTX_DELTA_Q_DATA ; 
 int /*<<< orphan*/  CTX_DELTA_Q_F ; 
 int /*<<< orphan*/  CTX_ZERO_BLOCK ; 
 int DIRAC_MAX_QUANT_INDEX ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int* ff_dirac_qoffset_inter_tab ; 
 int* ff_dirac_qoffset_intra_tab ; 
 int* ff_dirac_qscale_tab ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC11(DiracContext *s, SubBand *b,
                             GetBitContext *gb, DiracArith *c,
                             int left, int right, int top, int bottom,
                             int blockcnt_one, int is_arith)
{
    int x, y, zero_block;
    int qoffset, qfactor;
    uint8_t *buf;

    /* check for any coded coefficients in this codeblock */
    if (!blockcnt_one) {
        if (is_arith)
            zero_block = FUNC6(c, CTX_ZERO_BLOCK);
        else
            zero_block = FUNC9(gb);

        if (zero_block)
            return 0;
    }

    if (s->codeblock_mode && !(s->old_delta_quant && blockcnt_one)) {
        int quant;
        if (is_arith)
            quant = FUNC7(c, CTX_DELTA_Q_F, CTX_DELTA_Q_DATA);
        else
            quant = FUNC8(gb);
        if (quant > INT_MAX - b->quant || b->quant + quant < 0) {
            FUNC2(s->avctx, AV_LOG_ERROR, "Invalid quant\n");
            return AVERROR_INVALIDDATA;
        }
        b->quant += quant;
    }

    if (b->quant > (DIRAC_MAX_QUANT_INDEX - 1)) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Unsupported quant %d\n", b->quant);
        b->quant = 0;
        return AVERROR_INVALIDDATA;
    }

    qfactor = ff_dirac_qscale_tab[b->quant];
    /* TODO: context pointer? */
    if (!s->num_refs)
        qoffset = ff_dirac_qoffset_intra_tab[b->quant] + 2;
    else
        qoffset = ff_dirac_qoffset_inter_tab[b->quant] + 2;

    buf = b->ibuf + top * b->stride;
    if (is_arith) {
        for (y = top; y < bottom; y++) {
            if (c->error)
                return c->error;
            for (x = left; x < right; x++) {
                if (b->pshift) {
                    FUNC3(c, qfactor, qoffset, b, (int32_t*)(buf)+x, x, y);
                } else {
                    FUNC4(c, qfactor, qoffset, b, (int16_t*)(buf)+x, x, y);
                }
            }
            buf += b->stride;
        }
    } else {
        for (y = top; y < bottom; y++) {
            if (FUNC10(gb) < 1)
                return AVERROR_INVALIDDATA;
            for (x = left; x < right; x++) {
                int val = FUNC5(gb, qfactor, qoffset);
                if (b->pshift) {
                    FUNC1(&buf[4*x], val);
                } else {
                    FUNC0(&buf[2*x], val);
                }
            }
            buf += b->stride;
         }
     }
     return 0;
}