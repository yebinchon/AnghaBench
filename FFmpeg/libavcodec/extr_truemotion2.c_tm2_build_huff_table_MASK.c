#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int bits; int length; int /*<<< orphan*/ * recode; int /*<<< orphan*/  vlc; } ;
struct TYPE_9__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
struct TYPE_8__ {int val_bits; int max_bits; int nodes; int num; int max_num; int /*<<< orphan*/ * lens; int /*<<< orphan*/ * bits; int /*<<< orphan*/ * nums; void* min_bits; } ;
typedef  TYPE_1__ TM2Huff ;
typedef  TYPE_2__ TM2Context ;
typedef  TYPE_3__ TM2Codes ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(TM2Context *ctx, TM2Codes *code)
{
    TM2Huff huff;
    int res = 0;

    huff.val_bits = FUNC5(&ctx->gb, 5);
    huff.max_bits = FUNC5(&ctx->gb, 5);
    huff.min_bits = FUNC5(&ctx->gb, 5);
    huff.nodes    = FUNC6(&ctx->gb, 17);
    huff.num      = 0;

    /* check for correct codes parameters */
    if ((huff.val_bits < 1) || (huff.val_bits > 32) ||
        (huff.max_bits < 0) || (huff.max_bits > 25)) {
        FUNC3(ctx->avctx, AV_LOG_ERROR, "Incorrect tree parameters - literal "
               "length: %i, max code length: %i\n", huff.val_bits, huff.max_bits);
        return AVERROR_INVALIDDATA;
    }
    if ((huff.nodes <= 0) || (huff.nodes > 0x10000)) {
        FUNC3(ctx->avctx, AV_LOG_ERROR, "Incorrect number of Huffman tree "
               "nodes: %i\n", huff.nodes);
        return AVERROR_INVALIDDATA;
    }
    /* one-node tree */
    if (huff.max_bits == 0)
        huff.max_bits = 1;

    /* allocate space for codes - it is exactly ceil(nodes / 2) entries */
    huff.max_num = (huff.nodes + 1) >> 1;
    huff.nums    = FUNC1(huff.max_num, sizeof(int));
    huff.bits    = FUNC1(huff.max_num, sizeof(uint32_t));
    huff.lens    = FUNC1(huff.max_num, sizeof(int));

    if (!huff.nums || !huff.bits || !huff.lens) {
        res = FUNC0(ENOMEM);
        goto out;
    }

    res = FUNC8(ctx, 0, 0, &huff);

    if (res >= 0 && res != huff.max_bits) {
        FUNC3(ctx->avctx, AV_LOG_ERROR, "Got less bits than expected: %i of %i\n",
               res, huff.max_bits);
        res = AVERROR_INVALIDDATA;
    }
    if (huff.num != huff.max_num) {
        FUNC3(ctx->avctx, AV_LOG_ERROR, "Got less codes than expected: %i of %i\n",
               huff.num, huff.max_num);
        res = AVERROR_INVALIDDATA;
    }

    /* convert codes to vlc_table */
    if (res >= 0) {
        int i;

        res = FUNC7(&code->vlc, huff.max_bits, huff.max_num,
                       huff.lens, sizeof(int), sizeof(int),
                       huff.bits, sizeof(uint32_t), sizeof(uint32_t), 0);
        if (res < 0)
            FUNC3(ctx->avctx, AV_LOG_ERROR, "Cannot build VLC table\n");
        else {
            code->bits = huff.max_bits;
            code->length = huff.max_num;
            code->recode = FUNC4(code->length, sizeof(int));
            if (!code->recode) {
                res = FUNC0(ENOMEM);
                goto out;
            }
            for (i = 0; i < code->length; i++)
                code->recode[i] = huff.nums[i];
        }
    }

out:
    /* free allocated memory */
    FUNC2(huff.nums);
    FUNC2(huff.bits);
    FUNC2(huff.lens);

    return res;
}