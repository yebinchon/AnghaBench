#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {scalar_t__ table; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ VLC ;
struct TYPE_14__ {int* escapes; int* recode1; int* recode2; int* last; TYPE_1__* v2; TYPE_1__* v1; } ;
struct TYPE_13__ {int length; int current; int* bits; int* lengths; int* values; scalar_t__ maxlength; } ;
struct TYPE_12__ {int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ SmackVContext ;
typedef  TYPE_3__ HuffContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ DBCtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INIT_VLC_LE ; 
 int /*<<< orphan*/  SMKTREE_BITS ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int) ; 
 int* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int,int,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(SmackVContext *smk, GetBitContext *gb, int **recodes, int *last, int size)
{
    int res;
    HuffContext huff;
    HuffContext tmp1, tmp2;
    VLC vlc[2] = { { 0 } };
    int escapes[3];
    DBCtx ctx;
    int err = 0;

    if(size >= UINT_MAX>>4){ // (((size + 3) >> 2) + 3) << 2 must not overflow
        FUNC2(smk->avctx, AV_LOG_ERROR, "size too large\n");
        return AVERROR_INVALIDDATA;
    }

    tmp1.length = 256;
    tmp1.maxlength = 0;
    tmp1.current = 0;
    tmp1.bits = FUNC3(256 * 4);
    tmp1.lengths = FUNC3(256 * sizeof(int));
    tmp1.values = FUNC3(256 * sizeof(int));

    tmp2.length = 256;
    tmp2.maxlength = 0;
    tmp2.current = 0;
    tmp2.bits = FUNC3(256 * 4);
    tmp2.lengths = FUNC3(256 * sizeof(int));
    tmp2.values = FUNC3(256 * sizeof(int));
    if (!tmp1.bits || !tmp1.lengths || !tmp1.values ||
        !tmp2.bits || !tmp2.lengths || !tmp2.values) {
        err = FUNC0(ENOMEM);
        goto error;
    }

    if(FUNC7(gb)) {
        res = FUNC11(gb, &tmp1, 0, 0);
        if (res < 0) {
            err = res;
            goto error;
        }
        FUNC9(gb);
        if(tmp1.current > 1) {
            res = FUNC8(&vlc[0], SMKTREE_BITS, tmp1.length,
                        tmp1.lengths, sizeof(int), sizeof(int),
                        tmp1.bits, sizeof(uint32_t), sizeof(uint32_t), INIT_VLC_LE);
            if(res < 0) {
                FUNC2(smk->avctx, AV_LOG_ERROR, "Cannot build VLC table\n");
                err = res;
                goto error;
            }
        }
    }
    if (!vlc[0].table) {
        FUNC2(smk->avctx, AV_LOG_ERROR, "Skipping low bytes tree\n");
    }
    if(FUNC7(gb)){
        res = FUNC11(gb, &tmp2, 0, 0);
        if (res < 0) {
            err = res;
            goto error;
        }
        FUNC9(gb);
        if(tmp2.current > 1) {
            res = FUNC8(&vlc[1], SMKTREE_BITS, tmp2.length,
                        tmp2.lengths, sizeof(int), sizeof(int),
                        tmp2.bits, sizeof(uint32_t), sizeof(uint32_t), INIT_VLC_LE);
            if(res < 0) {
                FUNC2(smk->avctx, AV_LOG_ERROR, "Cannot build VLC table\n");
                err = res;
                goto error;
            }
        }
    }
    if (!vlc[1].table) {
        FUNC2(smk->avctx, AV_LOG_ERROR, "Skipping high bytes tree\n");
    }

    escapes[0]  = FUNC6(gb, 16);
    escapes[1]  = FUNC6(gb, 16);
    escapes[2]  = FUNC6(gb, 16);

    last[0] = last[1] = last[2] = -1;

    ctx.escapes[0] = escapes[0];
    ctx.escapes[1] = escapes[1];
    ctx.escapes[2] = escapes[2];
    ctx.v1 = &vlc[0];
    ctx.v2 = &vlc[1];
    ctx.recode1 = tmp1.values;
    ctx.recode2 = tmp2.values;
    ctx.last = last;

    huff.length = ((size + 3) >> 2) + 4;
    huff.maxlength = 0;
    huff.current = 0;
    huff.values = FUNC4(huff.length, sizeof(int));
    if (!huff.values) {
        err = FUNC0(ENOMEM);
        goto error;
    }

    res = FUNC10(gb, &huff, &ctx, 0);
    if (res < 0)
        err = res;
    FUNC9(gb);
    if(ctx.last[0] == -1) ctx.last[0] = huff.current++;
    if(ctx.last[1] == -1) ctx.last[1] = huff.current++;
    if(ctx.last[2] == -1) ctx.last[2] = huff.current++;
    if (ctx.last[0] >= huff.length ||
        ctx.last[1] >= huff.length ||
        ctx.last[2] >= huff.length) {
        FUNC2(smk->avctx, AV_LOG_ERROR, "Huffman codes out of range\n");
        err = AVERROR_INVALIDDATA;
    }

    *recodes = huff.values;

error:
    if(vlc[0].table)
        FUNC5(&vlc[0]);
    if(vlc[1].table)
        FUNC5(&vlc[1]);
    FUNC1(tmp1.bits);
    FUNC1(tmp1.lengths);
    FUNC1(tmp1.values);
    FUNC1(tmp2.bits);
    FUNC1(tmp2.lengths);
    FUNC1(tmp2.values);

    return err;
}