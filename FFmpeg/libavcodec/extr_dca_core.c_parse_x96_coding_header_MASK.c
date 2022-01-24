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
struct TYPE_3__ {int x96_high_res; int x96_rev_no; int x96_subband_start; int x96_nchannels; int* nsubbands; int* joint_intensity_index; int* scale_factor_sel; int /*<<< orphan*/  gb; scalar_t__ crc_present; int /*<<< orphan*/  avctx; void*** quant_index_sel; void** bit_allocation_sel; scalar_t__ x96_crc_present; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DCA_SUBBANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int* ff_dca_quant_index_sel_nbits ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(DCACoreDecoder *s, int exss, int xch_base)
{
    int n, ch, header_size = 0, header_pos = FUNC5(&s->gb);

    if (FUNC6(&s->gb) < 0)
        return AVERROR_INVALIDDATA;

    if (exss) {
        // Channel set header length
        header_size = FUNC3(&s->gb, 7) + 1;

        // Check CRC
        if (s->x96_crc_present
            && FUNC1(s->avctx, &s->gb, header_pos, header_pos + header_size * 8)) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 channel set header checksum\n");
            return AVERROR_INVALIDDATA;
        }
    }

    // High resolution flag
    s->x96_high_res = FUNC4(&s->gb);

    // First encoded subband
    if (s->x96_rev_no < 8) {
        s->x96_subband_start = FUNC3(&s->gb, 5);
        if (s->x96_subband_start > 27) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 subband start index (%d)\n", s->x96_subband_start);
            return AVERROR_INVALIDDATA;
        }
    } else {
        s->x96_subband_start = DCA_SUBBANDS;
    }

    // Subband activity count
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        s->nsubbands[ch] = FUNC3(&s->gb, 6) + 1;
        if (s->nsubbands[ch] < DCA_SUBBANDS) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 subband activity count (%d)\n", s->nsubbands[ch]);
            return AVERROR_INVALIDDATA;
        }
    }

    // Joint intensity coding index
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        if ((n = FUNC3(&s->gb, 3)) && xch_base)
            n += xch_base - 1;
        if (n > s->x96_nchannels) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 joint intensity coding index\n");
            return AVERROR_INVALIDDATA;
        }
        s->joint_intensity_index[ch] = n;
    }

    // Scale factor code book
    for (ch = xch_base; ch < s->x96_nchannels; ch++) {
        s->scale_factor_sel[ch] = FUNC3(&s->gb, 3);
        if (s->scale_factor_sel[ch] >= 6) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Invalid X96 scale factor code book\n");
            return AVERROR_INVALIDDATA;
        }
    }

    // Bit allocation quantizer select
    for (ch = xch_base; ch < s->x96_nchannels; ch++)
        s->bit_allocation_sel[ch] = FUNC3(&s->gb, 3);

    // Quantization index codebook select
    for (n = 0; n < 6 + 4 * s->x96_high_res; n++)
        for (ch = xch_base; ch < s->x96_nchannels; ch++)
            s->quant_index_sel[ch][n] = FUNC3(&s->gb, ff_dca_quant_index_sel_nbits[n]);

    if (exss) {
        // Reserved
        // Byte align
        // CRC16 of channel set header
        if (FUNC2(&s->gb, header_pos + header_size * 8)) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of X96 channel set header\n");
            return AVERROR_INVALIDDATA;
        }
    } else {
        if (s->crc_present)
            FUNC7(&s->gb, 16);
    }

    return 0;
}