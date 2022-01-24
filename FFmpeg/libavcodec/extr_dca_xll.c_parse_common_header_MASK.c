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
struct TYPE_3__ {int nchsets; int nframesegs; int nsegsamples_log2; int nsegsamples; int nframesamples_log2; int nframesamples; int seg_size_nbits; int band_crc_present; int ch_mask_nbits; int fixed_lsb_width; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; scalar_t__ scalable_lsbs; int /*<<< orphan*/  frame_size; } ;
typedef  TYPE_1__ DCAXllDecoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  DCA_SYNCWORD_XLL ; 
 int DCA_XLL_CHSETS_MAX ; 
 int /*<<< orphan*/  DCA_XLL_PBR_BUFFER_MAX ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(DCAXllDecoder *s)
{
    int stream_ver, header_size, frame_size_nbits, nframesegs_log2;

    // XLL extension sync word
    if (FUNC7(&s->gb, 32) != DCA_SYNCWORD_XLL) {
        FUNC1(s->avctx, AV_LOG_VERBOSE, "Invalid XLL sync word\n");
        return FUNC0(EAGAIN);
    }

    // Version number
    stream_ver = FUNC5(&s->gb, 4) + 1;
    if (stream_ver > 1) {
        FUNC2(s->avctx, "XLL stream version %d", stream_ver);
        return AVERROR_PATCHWELCOME;
    }

    // Lossless frame header length
    header_size = FUNC5(&s->gb, 8) + 1;

    // Check CRC
    if (FUNC3(s->avctx, &s->gb, 32, header_size * 8)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Invalid XLL common header checksum\n");
        return AVERROR_INVALIDDATA;
    }

    // Number of bits used to read frame size
    frame_size_nbits = FUNC5(&s->gb, 5) + 1;

    // Number of bytes in a lossless frame
    s->frame_size = FUNC7(&s->gb, frame_size_nbits);
    if (s->frame_size < 0 || s->frame_size >= DCA_XLL_PBR_BUFFER_MAX) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Invalid XLL frame size (%d bytes)\n", s->frame_size);
        return AVERROR_INVALIDDATA;
    }
    s->frame_size++;

    // Number of channels sets per frame
    s->nchsets = FUNC5(&s->gb, 4) + 1;
    if (s->nchsets > DCA_XLL_CHSETS_MAX) {
        FUNC2(s->avctx, "%d XLL channel sets", s->nchsets);
        return AVERROR_PATCHWELCOME;
    }

    // Number of segments per frame
    nframesegs_log2 = FUNC5(&s->gb, 4);
    s->nframesegs = 1 << nframesegs_log2;
    if (s->nframesegs > 1024) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Too many segments per XLL frame\n");
        return AVERROR_INVALIDDATA;
    }

    // Samples in segment per one frequency band for the first channel set
    // Maximum value is 256 for sampling frequencies <= 48 kHz
    // Maximum value is 512 for sampling frequencies > 48 kHz
    s->nsegsamples_log2 = FUNC5(&s->gb, 4);
    if (!s->nsegsamples_log2) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Too few samples per XLL segment\n");
        return AVERROR_INVALIDDATA;
    }
    s->nsegsamples = 1 << s->nsegsamples_log2;
    if (s->nsegsamples > 512) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Too many samples per XLL segment\n");
        return AVERROR_INVALIDDATA;
    }

    // Samples in frame per one frequency band for the first channel set
    s->nframesamples_log2 = s->nsegsamples_log2 + nframesegs_log2;
    s->nframesamples = 1 << s->nframesamples_log2;
    if (s->nframesamples > 65536) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Too many samples per XLL frame\n");
        return AVERROR_INVALIDDATA;
    }

    // Number of bits used to read segment size
    s->seg_size_nbits = FUNC5(&s->gb, 5) + 1;

    // Presence of CRC16 within each frequency band
    // 0 - No CRC16 within band
    // 1 - CRC16 placed at the end of MSB0
    // 2 - CRC16 placed at the end of MSB0 and LSB0
    // 3 - CRC16 placed at the end of MSB0 and LSB0 and other frequency bands
    s->band_crc_present = FUNC5(&s->gb, 2);

    // MSB/LSB split flag
    s->scalable_lsbs = FUNC6(&s->gb);

    // Channel position mask
    s->ch_mask_nbits = FUNC5(&s->gb, 5) + 1;

    // Fixed LSB width
    if (s->scalable_lsbs)
        s->fixed_lsb_width = FUNC5(&s->gb, 4);
    else
        s->fixed_lsb_width = 0;

    // Reserved
    // Byte align
    // Header CRC16 protection
    if (FUNC4(&s->gb, header_size * 8)) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Read past end of XLL common header\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}