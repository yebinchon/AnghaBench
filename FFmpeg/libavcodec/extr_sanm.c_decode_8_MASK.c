#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {long npixels; int /*<<< orphan*/ * codebook; int /*<<< orphan*/ * rle_buf; int /*<<< orphan*/  avctx; int /*<<< orphan*/  rle_buf_size; int /*<<< orphan*/ * frm0; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,long) ; 

__attribute__((used)) static int FUNC4(SANMVideoContext *ctx)
{
    uint16_t *pdest = ctx->frm0;
    uint8_t *rsrc;
    long npixels = ctx->npixels;

    FUNC1(&ctx->rle_buf, &ctx->rle_buf_size, npixels);
    if (!ctx->rle_buf) {
        FUNC2(ctx->avctx, AV_LOG_ERROR, "RLE buffer allocation failed.\n");
        return FUNC0(ENOMEM);
    }
    rsrc = ctx->rle_buf;

    if (FUNC3(ctx, rsrc, npixels))
        return AVERROR_INVALIDDATA;

    while (npixels--)
        *pdest++ = ctx->codebook[*rsrc++];

    return 0;
}