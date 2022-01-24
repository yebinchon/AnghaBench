#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; void* rle_output_size; void* bg_color; void* rotate_code; void* codec; void* seq_num; } ;
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  gb; void** codebook; void** small_codebook; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ SANMVideoContext ;
typedef  TYPE_2__ SANMFrameHeader ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(SANMVideoContext *ctx, SANMFrameHeader *hdr)
{
    int i, ret;

    if ((ret = FUNC2(&ctx->gb)) < 560) {
        FUNC0(ctx->avctx, AV_LOG_ERROR, "Input frame too short (%d bytes).\n",
               ret);
        return AVERROR_INVALIDDATA;
    }
    FUNC6(&ctx->gb, 8); // skip pad

    hdr->width  = FUNC5(&ctx->gb);
    hdr->height = FUNC5(&ctx->gb);

    if (hdr->width != ctx->width || hdr->height != ctx->height) {
        FUNC1(ctx->avctx, "Variable size frames");
        return AVERROR_PATCHWELCOME;
    }

    hdr->seq_num     = FUNC4(&ctx->gb);
    hdr->codec       = FUNC3(&ctx->gb);
    hdr->rotate_code = FUNC3(&ctx->gb);

    FUNC6(&ctx->gb, 4); // skip pad

    for (i = 0; i < 4; i++)
        ctx->small_codebook[i] = FUNC4(&ctx->gb);
    hdr->bg_color = FUNC4(&ctx->gb);

    FUNC6(&ctx->gb, 2); // skip pad

    hdr->rle_output_size = FUNC5(&ctx->gb);
    for (i = 0; i < 256; i++)
        ctx->codebook[i] = FUNC4(&ctx->gb);

    FUNC6(&ctx->gb, 8); // skip pad

    return 0;
}