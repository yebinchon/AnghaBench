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
struct TYPE_4__ {int nchannels; int nsubframes; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCACoreDecoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DCA_EXSS_CHANNELS_MAX ; 
 int DCA_EXSS_CHSETS_MAX ; 
 int DCA_SUBBANDS ; 
 scalar_t__ DCA_SYNCWORD_XBR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_1__*,int,int,int*,int,int,int*) ; 

__attribute__((used)) static int FUNC8(DCACoreDecoder *s)
{
    int     xbr_frame_size[DCA_EXSS_CHSETS_MAX];
    int     xbr_nchannels[DCA_EXSS_CHSETS_MAX];
    int     xbr_nsubbands[DCA_EXSS_CHSETS_MAX * DCA_EXSS_CHANNELS_MAX];
    int     xbr_nchsets, xbr_transition_mode, xbr_band_nbits, xbr_base_ch;
    int     i, ch1, ch2, ret, header_size, header_pos = FUNC5(&s->gb);

    // XBR sync word
    if (FUNC6(&s->gb, 32) != DCA_SYNCWORD_XBR) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid XBR sync word\n");
        return AVERROR_INVALIDDATA;
    }

    // XBR frame header length
    header_size = FUNC3(&s->gb, 6) + 1;

    // Check XBR frame header CRC
    if (FUNC1(s->avctx, &s->gb, header_pos + 32, header_pos + header_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid XBR frame header checksum\n");
        return AVERROR_INVALIDDATA;
    }

    // Number of channel sets
    xbr_nchsets = FUNC3(&s->gb, 2) + 1;

    // Channel set data byte size
    for (i = 0; i < xbr_nchsets; i++)
        xbr_frame_size[i] = FUNC3(&s->gb, 14) + 1;

    // Transition mode flag
    xbr_transition_mode = FUNC4(&s->gb);

    // Channel set headers
    for (i = 0, ch2 = 0; i < xbr_nchsets; i++) {
        xbr_nchannels[i] = FUNC3(&s->gb, 3) + 1;
        xbr_band_nbits = FUNC3(&s->gb, 2) + 5;
        for (ch1 = 0; ch1 < xbr_nchannels[i]; ch1++, ch2++) {
            xbr_nsubbands[ch2] = FUNC3(&s->gb, xbr_band_nbits) + 1;
            if (xbr_nsubbands[ch2] > DCA_SUBBANDS) {
                FUNC0(s->avctx, AV_LOG_ERROR, "Invalid number of active XBR subbands (%d)\n", xbr_nsubbands[ch2]);
                return AVERROR_INVALIDDATA;
            }
        }
    }

    // Reserved
    // Byte align
    // CRC16 of XBR frame header
    if (FUNC2(&s->gb, header_pos + header_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XBR frame header\n");
        return AVERROR_INVALIDDATA;
    }

    // Channel set data
    for (i = 0, xbr_base_ch = 0; i < xbr_nchsets; i++) {
        header_pos = FUNC5(&s->gb);

        if (xbr_base_ch + xbr_nchannels[i] <= s->nchannels) {
            int sf, sub_pos;

            for (sf = 0, sub_pos = 0; sf < s->nsubframes; sf++) {
                if ((ret = FUNC7(s, xbr_base_ch,
                                              xbr_base_ch + xbr_nchannels[i],
                                              xbr_nsubbands, xbr_transition_mode,
                                              sf, &sub_pos)) < 0)
                    return ret;
            }
        }

        xbr_base_ch += xbr_nchannels[i];

        if (FUNC2(&s->gb, header_pos + xbr_frame_size[i] * 8)) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XBR channel set\n");
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}