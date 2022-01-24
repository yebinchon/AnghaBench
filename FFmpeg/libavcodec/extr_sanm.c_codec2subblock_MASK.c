#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_6__ {int pitch; int width; int* small_codebook; int* codebook; int /*<<< orphan*/  gb; int /*<<< orphan*/  frm0; int /*<<< orphan*/  frm1; int /*<<< orphan*/  frm2; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int,int) ; 
 int** motion_vectors ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int,int) ; 

__attribute__((used)) static int FUNC8(SANMVideoContext *ctx, int cx, int cy, int blk_size)
{
    int16_t mx, my, index;
    int opcode;

    if (FUNC0(&ctx->gb) < 1)
        return AVERROR_INVALIDDATA;

    opcode = FUNC1(&ctx->gb);

    switch (opcode) {
    default:
        mx = motion_vectors[opcode][0];
        my = motion_vectors[opcode][1];

        if (FUNC5(ctx, cx, cy, mx, my, blk_size)) {
            FUNC3(ctx->frm0 + cx      + ctx->pitch *  cy,
                       ctx->frm2 + cx + mx + ctx->pitch * (cy + my),
                       blk_size, ctx->pitch);
        }
        break;
    case 0xF5:
        if (FUNC0(&ctx->gb) < 2)
            return AVERROR_INVALIDDATA;
        index = FUNC2(&ctx->gb);

        mx = index % ctx->width;
        my = index / ctx->width;

        if (FUNC5(ctx, cx, cy, mx, my, blk_size)) {
            FUNC3(ctx->frm0 + cx      + ctx->pitch *  cy,
                       ctx->frm2 + cx + mx + ctx->pitch * (cy + my),
                       blk_size, ctx->pitch);
        }
        break;
    case 0xF6:
        FUNC3(ctx->frm0 + cx + ctx->pitch * cy,
                   ctx->frm1 + cx + ctx->pitch * cy,
                   blk_size, ctx->pitch);
        break;
    case 0xF7:
        FUNC6(ctx, cx, cy, blk_size, ctx->pitch);
        break;

    case 0xF8:
        FUNC7(ctx, cx, cy, blk_size, ctx->pitch);
        break;
    case 0xF9:
    case 0xFA:
    case 0xFB:
    case 0xFC:
        FUNC4(ctx->frm0 + cx + cy * ctx->pitch,
                   ctx->small_codebook[opcode - 0xf9], blk_size, ctx->pitch);
        break;
    case 0xFD:
        if (FUNC0(&ctx->gb) < 1)
            return AVERROR_INVALIDDATA;
        FUNC4(ctx->frm0 + cx + cy * ctx->pitch,
                   ctx->codebook[FUNC1(&ctx->gb)], blk_size, ctx->pitch);
        break;
    case 0xFE:
        if (FUNC0(&ctx->gb) < 2)
            return AVERROR_INVALIDDATA;
        FUNC4(ctx->frm0 + cx + cy * ctx->pitch,
                   FUNC2(&ctx->gb), blk_size, ctx->pitch);
        break;
    case 0xFF:
        if (blk_size == 2) {
            FUNC7(ctx, cx, cy, blk_size, ctx->pitch);
        } else {
            blk_size >>= 1;
            if (FUNC8(ctx, cx, cy, blk_size))
                return AVERROR_INVALIDDATA;
            if (FUNC8(ctx, cx + blk_size, cy, blk_size))
                return AVERROR_INVALIDDATA;
            if (FUNC8(ctx, cx, cy + blk_size, blk_size))
                return AVERROR_INVALIDDATA;
            if (FUNC8(ctx, cx + blk_size, cy + blk_size, blk_size))
                return AVERROR_INVALIDDATA;
        }
        break;
    }
    return 0;
}