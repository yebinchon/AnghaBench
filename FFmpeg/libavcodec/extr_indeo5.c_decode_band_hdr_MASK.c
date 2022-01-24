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
typedef  int uint8_t ;
struct TYPE_6__ {int frame_flags; int /*<<< orphan*/  gb; } ;
struct TYPE_5__ {int is_empty; int inherit_mv; int inherit_qdelta; int qdelta_present; int num_corr; int* corr; int rvmap_sel; int checksum; int glob_quant; scalar_t__ checksum_present; int /*<<< orphan*/  blk_vlc; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ IVIBandDesc ;
typedef  TYPE_2__ IVI45DecContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  IVI_BLK_HUFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(IVI45DecContext *ctx, IVIBandDesc *band,
                           AVCodecContext *avctx)
{
    int         i, ret;
    uint8_t     band_flags;

    band_flags = FUNC3(&ctx->gb, 8);

    if (band_flags & 1) {
        band->is_empty = 1;
        return 0;
    }

    band->data_size = (ctx->frame_flags & 0x80) ? FUNC5(&ctx->gb, 24) : 0;

    band->inherit_mv     = band_flags & 2;
    band->inherit_qdelta = band_flags & 8;
    band->qdelta_present = band_flags & 4;
    if (!band->qdelta_present) band->inherit_qdelta = 1;

    /* decode rvmap probability corrections if any */
    band->num_corr = 0; /* there are no corrections */
    if (band_flags & 0x10) {
        band->num_corr = FUNC3(&ctx->gb, 8); /* get number of correction pairs */
        if (band->num_corr > 61) {
            FUNC1(avctx, AV_LOG_ERROR, "Too many corrections: %d\n",
                   band->num_corr);
            return AVERROR_INVALIDDATA;
        }

        /* read correction pairs */
        for (i = 0; i < band->num_corr * 2; i++)
            band->corr[i] = FUNC3(&ctx->gb, 8);
    }

    /* select appropriate rvmap table for this band */
    band->rvmap_sel = (band_flags & 0x40) ? FUNC3(&ctx->gb, 3) : 8;

    /* decode block huffman codebook */
    ret = FUNC2(&ctx->gb, band_flags & 0x80, IVI_BLK_HUFF,
                               &band->blk_vlc, avctx);
    if (ret < 0)
        return ret;

    band->checksum_present = FUNC4(&ctx->gb);
    if (band->checksum_present)
        band->checksum = FUNC3(&ctx->gb, 16);

    band->glob_quant = FUNC3(&ctx->gb, 5);

    /* skip unknown extension if any */
    if (band_flags & 0x20) { /* XXX: untested */
        FUNC0(&ctx->gb);
        FUNC6(&ctx->gb);
    }

    FUNC0(&ctx->gb);

    return 0;
}