#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  state2 ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_12__ {int bytestream_end; scalar_t__* one_state; } ;
struct TYPE_13__ {int version; int micro_version; int ac; int colorspace; int chroma_h_shift; int chroma_v_shift; int num_h_slices; int num_v_slices; int quant_table_count; int* context_count; int*** initial_states; int ec; int intra; void* transparency; void* chroma_planes; TYPE_10__* avctx; int /*<<< orphan*/ * quant_tables; scalar_t__ height; scalar_t__ width; scalar_t__ plane_count; scalar_t__* state_transition; TYPE_1__ c; } ;
struct TYPE_11__ {int extradata_size; int bits_per_raw_sample; int debug; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_1__ RangeCoder ;
typedef  TYPE_2__ FFV1Context ;

/* Variables and functions */
 int AC_RANGE_CUSTOM_TAB ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_CRC_32_IEEE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int CONTEXT_SIZE ; 
 int FF_DEBUG_PICT_INFO ; 
 scalar_t__ MAX_QUANT_TABLES ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,double,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__* const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (TYPE_1__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(FFV1Context *f)
{
    RangeCoder *const c = &f->c;
    uint8_t state[CONTEXT_SIZE];
    int i, j, k, ret;
    uint8_t state2[32][CONTEXT_SIZE];
    unsigned crc = 0;

    FUNC9(state2, 128, sizeof(state2));
    FUNC9(state, 128, sizeof(state));

    FUNC6(c, f->avctx->extradata, f->avctx->extradata_size);
    FUNC4(c, 0.05 * (1LL << 32), 256 - 8);

    f->version = FUNC8(c, state, 0);
    if (f->version < 2) {
        FUNC3(f->avctx, AV_LOG_ERROR, "Invalid version in global header\n");
        return AVERROR_INVALIDDATA;
    }
    if (f->version > 2) {
        c->bytestream_end -= 4;
        f->micro_version = FUNC8(c, state, 0);
        if (f->micro_version < 0)
            return AVERROR_INVALIDDATA;
    }
    f->ac = FUNC8(c, state, 0);

    if (f->ac == AC_RANGE_CUSTOM_TAB) {
        for (i = 1; i < 256; i++)
            f->state_transition[i] = FUNC8(c, state, 1) + c->one_state[i];
    }

    f->colorspace                 = FUNC8(c, state, 0); //YUV cs type
    f->avctx->bits_per_raw_sample = FUNC8(c, state, 0);
    f->chroma_planes              = FUNC7(c, state);
    f->chroma_h_shift             = FUNC8(c, state, 0);
    f->chroma_v_shift             = FUNC8(c, state, 0);
    f->transparency               = FUNC7(c, state);
    f->plane_count                = 1 + (f->chroma_planes || f->version<4) + f->transparency;
    f->num_h_slices               = 1 + FUNC8(c, state, 0);
    f->num_v_slices               = 1 + FUNC8(c, state, 0);

    if (f->chroma_h_shift > 4U || f->chroma_v_shift > 4U) {
        FUNC3(f->avctx, AV_LOG_ERROR, "chroma shift parameters %d %d are invalid\n",
               f->chroma_h_shift, f->chroma_v_shift);
        return AVERROR_INVALIDDATA;
    }

    if (f->num_h_slices > (unsigned)f->width  || !f->num_h_slices ||
        f->num_v_slices > (unsigned)f->height || !f->num_v_slices
       ) {
        FUNC3(f->avctx, AV_LOG_ERROR, "slice count invalid\n");
        return AVERROR_INVALIDDATA;
    }

    f->quant_table_count = FUNC8(c, state, 0);
    if (f->quant_table_count > (unsigned)MAX_QUANT_TABLES || !f->quant_table_count) {
        FUNC3(f->avctx, AV_LOG_ERROR, "quant table count %d is invalid\n", f->quant_table_count);
        f->quant_table_count = 0;
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < f->quant_table_count; i++) {
        f->context_count[i] = FUNC10(c, f->quant_tables[i]);
        if (f->context_count[i] < 0) {
            FUNC3(f->avctx, AV_LOG_ERROR, "read_quant_table error\n");
            return AVERROR_INVALIDDATA;
        }
    }
    if ((ret = FUNC5(f)) < 0)
        return ret;

    for (i = 0; i < f->quant_table_count; i++)
        if (FUNC7(c, state)) {
            for (j = 0; j < f->context_count[i]; j++)
                for (k = 0; k < CONTEXT_SIZE; k++) {
                    int pred = j ? f->initial_states[i][j - 1][k] : 128;
                    f->initial_states[i][j][k] =
                        (pred + FUNC8(c, state2[k], 1)) & 0xFF;
                }
        }

    if (f->version > 2) {
        f->ec = FUNC8(c, state, 0);
        if (f->micro_version > 2)
            f->intra = FUNC8(c, state, 0);
    }

    if (f->version > 2) {
        unsigned v;
        v = FUNC1(FUNC2(AV_CRC_32_IEEE), 0,
                   f->avctx->extradata, f->avctx->extradata_size);
        if (v || f->avctx->extradata_size < 4) {
            FUNC3(f->avctx, AV_LOG_ERROR, "CRC mismatch %X!\n", v);
            return AVERROR_INVALIDDATA;
        }
        crc = FUNC0(f->avctx->extradata + f->avctx->extradata_size - 4);
    }

    if (f->avctx->debug & FF_DEBUG_PICT_INFO)
        FUNC3(f->avctx, AV_LOG_DEBUG,
               "global: ver:%d.%d, coder:%d, colorspace: %d bpr:%d chroma:%d(%d:%d), alpha:%d slices:%dx%d qtabs:%d ec:%d intra:%d CRC:0x%08X\n",
               f->version, f->micro_version,
               f->ac,
               f->colorspace,
               f->avctx->bits_per_raw_sample,
               f->chroma_planes, f->chroma_h_shift, f->chroma_v_shift,
               f->transparency,
               f->num_h_slices, f->num_v_slices,
               f->quant_table_count,
               f->ec,
               f->intra,
               crc
              );
    return 0;
}