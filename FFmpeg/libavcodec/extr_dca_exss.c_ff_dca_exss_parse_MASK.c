#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int asset_offset; int asset_size; } ;
struct TYPE_6__ {int exss_index; int exss_size_nbits; int exss_size; int static_fields_present; int npresents; int nassets; int mix_metadata_enabled; int nmixoutconfigs; scalar_t__ avctx; int /*<<< orphan*/  gb; TYPE_2__* assets; int /*<<< orphan*/ * nmixoutchs; } ;
typedef  TYPE_1__ DCAExssParser ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

int FUNC13(DCAExssParser *s, const uint8_t *data, int size)
{
    int i, ret, offset, wide_hdr, header_size;

    if ((ret = FUNC8(&s->gb, data, size)) < 0)
        return ret;

    // Extension substream sync word
    FUNC12(&s->gb, 32);

    // User defined bits
    FUNC11(&s->gb, 8);

    // Extension substream index
    s->exss_index = FUNC6(&s->gb, 2);

    // Flag indicating short or long header size
    wide_hdr = FUNC7(&s->gb);

    // Extension substream header length
    header_size = FUNC6(&s->gb, 8 + 4 * wide_hdr) + 1;

    // Check CRC
    if (s->avctx && FUNC3(s->avctx, &s->gb, 32 + 8, header_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid EXSS header checksum\n");
        return AVERROR_INVALIDDATA;
    }

    s->exss_size_nbits = 16 + 4 * wide_hdr;

    // Number of bytes of extension substream
    s->exss_size = FUNC6(&s->gb, s->exss_size_nbits) + 1;
    if (s->exss_size > size) {
        if (s->avctx)
            FUNC0(s->avctx, AV_LOG_ERROR, "Packet too short for EXSS frame\n");
        return AVERROR_INVALIDDATA;
    }

    // Per stream static fields presence flag
    if ((s->static_fields_present = FUNC7(&s->gb))) {
        int active_exss_mask[8];

        // Reference clock code
        FUNC11(&s->gb, 2);

        // Extension substream frame duration
        FUNC11(&s->gb, 3);

        // Timecode presence flag
        if (FUNC7(&s->gb))
            // Timecode data
            FUNC12(&s->gb, 36);

        // Number of defined audio presentations
        s->npresents = FUNC6(&s->gb, 3) + 1;
        if (s->npresents > 1) {
            if (s->avctx)
                FUNC2(s->avctx, "%d audio presentations", s->npresents);
            return AVERROR_PATCHWELCOME;
        }

        // Number of audio assets in extension substream
        s->nassets = FUNC6(&s->gb, 3) + 1;
        if (s->nassets > 1) {
            if (s->avctx)
                FUNC2(s->avctx, "%d audio assets", s->nassets);
            return AVERROR_PATCHWELCOME;
        }

        // Active extension substream mask for audio presentation
        for (i = 0; i < s->npresents; i++)
            active_exss_mask[i] = FUNC6(&s->gb, s->exss_index + 1);

        // Active audio asset mask
        for (i = 0; i < s->npresents; i++)
            FUNC12(&s->gb, FUNC1(active_exss_mask[i]) * 8);

        // Mixing metadata enable flag
        if ((s->mix_metadata_enabled = FUNC7(&s->gb))) {
            int spkr_mask_nbits;

            // Mixing metadata adjustment level
            FUNC11(&s->gb, 2);

            // Number of bits for mixer output speaker activity mask
            spkr_mask_nbits = (FUNC6(&s->gb, 2) + 1) << 2;

            // Number of mixing configurations
            s->nmixoutconfigs = FUNC6(&s->gb, 2) + 1;

            // Speaker layout mask for mixer output channels
            for (i = 0; i < s->nmixoutconfigs; i++)
                s->nmixoutchs[i] = FUNC4(FUNC6(&s->gb, spkr_mask_nbits));
        }
    } else {
        s->npresents = 1;
        s->nassets = 1;
    }

    // Size of encoded asset data in bytes
    offset = header_size;
    for (i = 0; i < s->nassets; i++) {
        s->assets[i].asset_offset = offset;
        s->assets[i].asset_size = FUNC6(&s->gb, s->exss_size_nbits) + 1;
        offset += s->assets[i].asset_size;
        if (offset > s->exss_size) {
            if (s->avctx)
                FUNC0(s->avctx, AV_LOG_ERROR, "EXSS asset out of bounds\n");
            return AVERROR_INVALIDDATA;
        }
    }

    // Audio asset descriptor
    for (i = 0; i < s->nassets; i++) {
        if ((ret = FUNC9(s, &s->assets[i])) < 0)
            return ret;
        if ((ret = FUNC10(&s->assets[i])) < 0) {
            if (s->avctx)
                FUNC0(s->avctx, AV_LOG_ERROR, "Invalid extension size in EXSS asset descriptor\n");
            return ret;
        }
    }

    // Backward compatible core present
    // Backward compatible core substream index
    // Backward compatible core asset index
    // Reserved
    // Byte align
    // CRC16 of extension substream header
    if (FUNC5(&s->gb, header_size * 8)) {
        if (s->avctx)
            FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of EXSS header\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}