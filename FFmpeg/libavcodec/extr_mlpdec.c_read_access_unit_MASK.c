#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_16__ {scalar_t__ codec_id; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int* data; int size; } ;
struct TYPE_14__ {int is_major_sync_unit; unsigned int num_substreams; unsigned int max_decoded_substream; scalar_t__ params_valid; TYPE_4__* avctx; int /*<<< orphan*/  filter_changed; scalar_t__ matrix_changed; TYPE_1__* substream; scalar_t__ major_sync_header_size; } ;
struct TYPE_13__ {int restart_seen; scalar_t__ blockpos; } ;
typedef  TYPE_1__ SubStream ;
typedef  TYPE_2__ MLPDecodeContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_MLP ; 
 scalar_t__ AV_CODEC_ID_TRUEHD ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int MAX_SUBSTREAMS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int const*,int) ; 
 int FUNC4 (int const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (TYPE_2__*,unsigned int,void*,int*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int const*,unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(AVCodecContext *avctx, void* data,
                            int *got_frame_ptr, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MLPDecodeContext *m = avctx->priv_data;
    GetBitContext gb;
    unsigned int length, substr;
    unsigned int substream_start;
    unsigned int header_size = 4;
    unsigned int substr_header_size = 0;
    uint8_t substream_parity_present[MAX_SUBSTREAMS];
    uint16_t substream_data_len[MAX_SUBSTREAMS];
    uint8_t parity_bits;
    int ret;

    if (buf_size < 4)
        return AVERROR_INVALIDDATA;

    length = (FUNC0(buf) & 0xfff) * 2;

    if (length < 4 || length > buf_size)
        return AVERROR_INVALIDDATA;

    FUNC8(&gb, (buf + 4), (length - 4) * 8);

    m->is_major_sync_unit = 0;
    if (FUNC15(&gb, 31) == (0xf8726fba >> 1)) {
        if (FUNC13(m, &gb) < 0)
            goto error;
        m->is_major_sync_unit = 1;
        header_size += m->major_sync_header_size;
    }

    if (!m->params_valid) {
        FUNC2(m->avctx, AV_LOG_WARNING,
               "Stream parameters not seen; skipping frame.\n");
        *got_frame_ptr = 0;
        return length;
    }

    substream_start = 0;

    for (substr = 0; substr < m->num_substreams; substr++) {
        int extraword_present, checkdata_present, end, nonrestart_substr;

        extraword_present = FUNC6(&gb);
        nonrestart_substr = FUNC6(&gb);
        checkdata_present = FUNC6(&gb);
        FUNC17(&gb);

        end = FUNC5(&gb, 12) * 2;

        substr_header_size += 2;

        if (extraword_present) {
            if (m->avctx->codec_id == AV_CODEC_ID_MLP) {
                FUNC2(m->avctx, AV_LOG_ERROR, "There must be no extraword for MLP.\n");
                goto error;
            }
            FUNC16(&gb, 16);
            substr_header_size += 2;
        }

        if (length < header_size + substr_header_size) {
            FUNC2(m->avctx, AV_LOG_ERROR, "Insufficient data for headers\n");
            goto error;
        }

        if (!(nonrestart_substr ^ m->is_major_sync_unit)) {
            FUNC2(m->avctx, AV_LOG_ERROR, "Invalid nonrestart_substr.\n");
            goto error;
        }

        if (end + header_size + substr_header_size > length) {
            FUNC2(m->avctx, AV_LOG_ERROR,
                   "Indicated length of substream %d data goes off end of "
                   "packet.\n", substr);
            end = length - header_size - substr_header_size;
        }

        if (end < substream_start) {
            FUNC2(avctx, AV_LOG_ERROR,
                   "Indicated end offset of substream %d data "
                   "is smaller than calculated start offset.\n",
                   substr);
            goto error;
        }

        if (substr > m->max_decoded_substream)
            continue;

        substream_parity_present[substr] = checkdata_present;
        substream_data_len[substr] = end - substream_start;
        substream_start = end;
    }

    parity_bits  = FUNC3(buf, 4);
    parity_bits ^= FUNC3(buf + header_size, substr_header_size);

    if ((((parity_bits >> 4) ^ parity_bits) & 0xF) != 0xF) {
        FUNC2(avctx, AV_LOG_ERROR, "Parity check failed.\n");
        goto error;
    }

    buf += header_size + substr_header_size;

    for (substr = 0; substr <= m->max_decoded_substream; substr++) {
        SubStream *s = &m->substream[substr];
        FUNC8(&gb, buf, substream_data_len[substr] * 8);

        m->matrix_changed = 0;
        FUNC9(m->filter_changed, 0, sizeof(m->filter_changed));

        s->blockpos = 0;
        do {
            if (FUNC6(&gb)) {
                if (FUNC6(&gb)) {
                    /* A restart header should be present. */
                    if (FUNC14(m, &gb, buf, substr) < 0)
                        goto next_substr;
                    s->restart_seen = 1;
                }

                if (!s->restart_seen)
                    goto next_substr;
                if (FUNC12(m, &gb, substr) < 0)
                    goto next_substr;
            }

            if (!s->restart_seen)
                goto next_substr;

            if ((ret = FUNC11(m, &gb, substr)) < 0)
                return ret;

            if (FUNC7(&gb) >= substream_data_len[substr] * 8)
                goto substream_length_mismatch;

        } while (!FUNC6(&gb));

        FUNC16(&gb, (-FUNC7(&gb)) & 15);

        if (substream_data_len[substr] * 8 - FUNC7(&gb) >= 32) {
            int shorten_by;

            if (FUNC5(&gb, 16) != 0xD234)
                return AVERROR_INVALIDDATA;

            shorten_by = FUNC5(&gb, 16);
            if      (m->avctx->codec_id == AV_CODEC_ID_TRUEHD && shorten_by  & 0x2000)
                s->blockpos -= FUNC1(shorten_by & 0x1FFF, s->blockpos);
            else if (m->avctx->codec_id == AV_CODEC_ID_MLP    && shorten_by != 0xD234)
                return AVERROR_INVALIDDATA;

            if (substr == m->max_decoded_substream)
                FUNC2(m->avctx, AV_LOG_INFO, "End of stream indicated.\n");
        }

        if (substream_parity_present[substr]) {
            uint8_t parity, checksum;

            if (substream_data_len[substr] * 8 - FUNC7(&gb) != 16)
                goto substream_length_mismatch;

            parity   = FUNC3(buf, substream_data_len[substr] - 2);
            checksum = FUNC4       (buf, substream_data_len[substr] - 2);

            if ((FUNC5(&gb, 8) ^ parity) != 0xa9    )
                FUNC2(m->avctx, AV_LOG_ERROR, "Substream %d parity check failed.\n", substr);
            if ( FUNC5(&gb, 8)           != checksum)
                FUNC2(m->avctx, AV_LOG_ERROR, "Substream %d checksum failed.\n"    , substr);
        }

        if (substream_data_len[substr] * 8 != FUNC7(&gb))
            goto substream_length_mismatch;

next_substr:
        if (!s->restart_seen)
            FUNC2(m->avctx, AV_LOG_ERROR,
                   "No restart header present in substream %d.\n", substr);

        buf += substream_data_len[substr];
    }

    if ((ret = FUNC10(m, m->max_decoded_substream, data, got_frame_ptr)) < 0)
        return ret;

    return length;

substream_length_mismatch:
    FUNC2(m->avctx, AV_LOG_ERROR, "substream %d length mismatch\n", substr);
    return AVERROR_INVALIDDATA;

error:
    m->params_valid = 0;
    return AVERROR_INVALIDDATA;
}