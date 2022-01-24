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
struct TYPE_4__ {int xxch_mask_nbits; int xxch_core_mask; int ch_mask; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  nchannels; int /*<<< orphan*/  xxch_crc_present; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DCA_SPEAKER_Cs ; 
 int DCA_SPEAKER_MASK_Ls ; 
 int DCA_SPEAKER_MASK_Lss ; 
 int DCA_SPEAKER_MASK_Rs ; 
 int DCA_SPEAKER_MASK_Rss ; 
 scalar_t__ DCA_SYNCWORD_XXCH ; 
 int /*<<< orphan*/  HEADER_XXCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(DCACoreDecoder *s)
{
    int xxch_nchsets, xxch_frame_size;
    int ret, mask, header_size, header_pos = FUNC6(&s->gb);

    // XXCH sync word
    if (FUNC7(&s->gb, 32) != DCA_SYNCWORD_XXCH) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid XXCH sync word\n");
        return AVERROR_INVALIDDATA;
    }

    // XXCH frame header length
    header_size = FUNC4(&s->gb, 6) + 1;

    // Check XXCH frame header CRC
    if (FUNC2(s->avctx, &s->gb, header_pos + 32, header_pos + header_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid XXCH frame header checksum\n");
        return AVERROR_INVALIDDATA;
    }

    // CRC presence flag for channel set header
    s->xxch_crc_present = FUNC5(&s->gb);

    // Number of bits for loudspeaker mask
    s->xxch_mask_nbits = FUNC4(&s->gb, 5) + 1;
    if (s->xxch_mask_nbits <= DCA_SPEAKER_Cs) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid number of bits for XXCH speaker mask (%d)\n", s->xxch_mask_nbits);
        return AVERROR_INVALIDDATA;
    }

    // Number of channel sets
    xxch_nchsets = FUNC4(&s->gb, 2) + 1;
    if (xxch_nchsets > 1) {
        FUNC1(s->avctx, "%d XXCH channel sets", xxch_nchsets);
        return AVERROR_PATCHWELCOME;
    }

    // Channel set 0 data byte size
    xxch_frame_size = FUNC4(&s->gb, 14) + 1;

    // Core loudspeaker activity mask
    s->xxch_core_mask = FUNC7(&s->gb, s->xxch_mask_nbits);

    // Validate the core mask
    mask = s->ch_mask;

    if ((mask & DCA_SPEAKER_MASK_Ls) && (s->xxch_core_mask & DCA_SPEAKER_MASK_Lss))
        mask = (mask & ~DCA_SPEAKER_MASK_Ls) | DCA_SPEAKER_MASK_Lss;

    if ((mask & DCA_SPEAKER_MASK_Rs) && (s->xxch_core_mask & DCA_SPEAKER_MASK_Rss))
        mask = (mask & ~DCA_SPEAKER_MASK_Rs) | DCA_SPEAKER_MASK_Rss;

    if (mask != s->xxch_core_mask) {
        FUNC0(s->avctx, AV_LOG_ERROR, "XXCH core speaker activity mask (%#x) disagrees with core (%#x)\n", s->xxch_core_mask, mask);
        return AVERROR_INVALIDDATA;
    }

    // Reserved
    // Byte align
    // CRC16 of XXCH frame header
    if (FUNC3(&s->gb, header_pos + header_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XXCH frame header\n");
        return AVERROR_INVALIDDATA;
    }

    // Parse XXCH channel set 0
    if ((ret = FUNC8(s, HEADER_XXCH, s->nchannels)) < 0)
        return ret;

    if (FUNC3(&s->gb, header_pos + header_size * 8 + xxch_frame_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XXCH channel set\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}