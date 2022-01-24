#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {int mode_count; int mode_mask; int prev_mask; scalar_t__* mode_blocksize; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVVorbisParseContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC11 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(AVVorbisParseContext *s,
                              const uint8_t *buf, int buf_size)
{
    GetBitContext gb, gb0;
    uint8_t *rev_buf;
    int i, ret = 0;
    int got_framing_bit, mode_count, got_mode_header, last_mode_count = 0;

    /* avoid overread */
    if (buf_size < 7) {
        FUNC2(s, AV_LOG_ERROR, "Setup header is too short\n");
        return AVERROR_INVALIDDATA;
    }

    /* make sure this is the Setup header */
    if (buf[0] != 5) {
        FUNC2(s, AV_LOG_ERROR, "Wrong packet type in Setup header\n");
        return AVERROR_INVALIDDATA;
    }

    /* check for header signature */
    if (FUNC11(&buf[1], "vorbis", 6)) {
        FUNC2(s, AV_LOG_ERROR, "Invalid packet signature in Setup header\n");
        return AVERROR_INVALIDDATA;
    }

    /* reverse bytes so we can easily read backwards with get_bits() */
    if (!(rev_buf = FUNC4(buf_size))) {
        FUNC2(s, AV_LOG_ERROR, "Out of memory\n");
        return FUNC0(ENOMEM);
    }
    for (i = 0; i < buf_size; i++)
        rev_buf[i] = buf[buf_size - 1 - i];
    FUNC10(&gb, rev_buf, buf_size * 8);

    got_framing_bit = 0;
    while (FUNC9(&gb) > 97) {
        if (FUNC7(&gb)) {
            got_framing_bit = FUNC8(&gb);
            break;
        }
    }
    if (!got_framing_bit) {
        FUNC2(s, AV_LOG_ERROR, "Invalid Setup header\n");
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }

    /* Now we search backwards to find possible valid mode counts. This is not
     * fool-proof because we could have false positive matches and read too
     * far, but there isn't really any way to be sure without parsing through
     * all the many variable-sized fields before the modes. This approach seems
     * to work well in testing, and it is similar to how it is handled in
     * liboggz. */
    mode_count = 0;
    got_mode_header = 0;
    while (FUNC9(&gb) >= 97) {
        if (FUNC6(&gb, 8) > 63 || FUNC6(&gb, 16) || FUNC6(&gb, 16))
            break;
        FUNC12(&gb, 1);
        mode_count++;
        if (mode_count > 64)
            break;
        gb0 = gb;
        if (FUNC6(&gb0, 6) + 1 == mode_count) {
            got_mode_header = 1;
            last_mode_count = mode_count;
        }
    }
    if (!got_mode_header) {
        FUNC2(s, AV_LOG_ERROR, "Invalid Setup header\n");
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }
    /* All samples I've seen use <= 2 modes, so ask for a sample if we find
     * more than that, as it is most likely a false positive. If we get any
     * we may need to approach this the long way and parse the whole Setup
     * header, but I hope very much that it never comes to that. */
    if (last_mode_count > 2) {
        FUNC5(s,
                              "%d modes (either a false positive or a "
                              "sample from an unknown encoder)",
                              last_mode_count);
    }
    /* We're limiting the mode count to 63 so that we know that the previous
     * block flag will be in the first packet byte. */
    if (last_mode_count > 63) {
        FUNC2(s, AV_LOG_ERROR, "Unsupported mode count: %d\n",
               last_mode_count);
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }
    s->mode_count = mode_count = last_mode_count;
    /* Determine the number of bits required to code the mode and turn that
     * into a bitmask to directly access the mode from the first frame byte. */
    s->mode_mask = ((1 << (FUNC3(mode_count - 1) + 1)) - 1) << 1;
    /* The previous window flag is the next bit after the mode */
    s->prev_mask = (s->mode_mask | 0x1) + 1;

    FUNC10(&gb, rev_buf, buf_size * 8);
    FUNC13(&gb, got_framing_bit);
    for (i = mode_count - 1; i >= 0; i--) {
        FUNC13(&gb, 40);
        s->mode_blocksize[i] = FUNC7(&gb);
    }

bad_header:
    FUNC1(rev_buf);
    return ret;
}