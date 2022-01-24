#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int npixels; int /*<<< orphan*/  gb; int /*<<< orphan*/ * codebook; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * frm0; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(SANMVideoContext *ctx)
{
    int npixels = ctx->npixels;
    uint16_t *frm = ctx->frm0;

    if (FUNC1(&ctx->gb) < npixels) {
        FUNC0(ctx->avctx, AV_LOG_ERROR, "Insufficient data for frame.\n");
        return AVERROR_INVALIDDATA;
    }
    while (npixels--)
        *frm++ = ctx->codebook[FUNC2(&ctx->gb)];

    return 0;
}