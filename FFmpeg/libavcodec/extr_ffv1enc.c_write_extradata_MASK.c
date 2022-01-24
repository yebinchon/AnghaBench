#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  state2 ;
typedef  int /*<<< orphan*/  state ;
typedef  int int8_t ;
struct TYPE_12__ {int* one_state; } ;
struct TYPE_13__ {int version; int micro_version; int ac; int* state_transition; int colorspace; int bits_per_raw_sample; int chroma_planes; int chroma_h_shift; int chroma_v_shift; int transparency; int num_h_slices; int num_v_slices; int quant_table_count; int*** initial_states; int* context_count; int ec; int intra; TYPE_1__* avctx; int /*<<< orphan*/ * quant_tables; TYPE_2__ c; } ;
struct TYPE_11__ {int extradata_size; int extradata; int gop_size; } ;
typedef  TYPE_2__ RangeCoder ;
typedef  TYPE_3__ FFV1Context ;

/* Variables and functions */
 int AC_RANGE_CUSTOM_TAB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CRC_32_IEEE ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int CONTEXT_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int**,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__* const,double,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__* const,int,int) ; 
 int FUNC8 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__* const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__* const,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(FFV1Context *f)
{
    RangeCoder *const c = &f->c;
    uint8_t state[CONTEXT_SIZE];
    int i, j, k;
    uint8_t state2[32][CONTEXT_SIZE];
    unsigned v;

    FUNC9(state2, 128, sizeof(state2));
    FUNC9(state, 128, sizeof(state));

    f->avctx->extradata_size = 10000 + 4 +
                                    (11 * 11 * 5 * 5 * 5 + 11 * 11 * 11) * 32;
    f->avctx->extradata = FUNC4(f->avctx->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!f->avctx->extradata)
        return FUNC0(ENOMEM);
    FUNC7(c, f->avctx->extradata, f->avctx->extradata_size);
    FUNC6(c, 0.05 * (1LL << 32), 256 - 8);

    FUNC11(c, state, f->version, 0);
    if (f->version > 2) {
        if (f->version == 3) {
            f->micro_version = 4;
        } else if (f->version == 4)
            f->micro_version = 2;
        FUNC11(c, state, f->micro_version, 0);
    }

    FUNC11(c, state, f->ac, 0);
    if (f->ac == AC_RANGE_CUSTOM_TAB)
        for (i = 1; i < 256; i++)
            FUNC11(c, state, f->state_transition[i] - c->one_state[i], 1);

    FUNC11(c, state, f->colorspace, 0); // YUV cs type
    FUNC11(c, state, f->bits_per_raw_sample, 0);
    FUNC10(c, state, f->chroma_planes);
    FUNC11(c, state, f->chroma_h_shift, 0);
    FUNC11(c, state, f->chroma_v_shift, 0);
    FUNC10(c, state, f->transparency);
    FUNC11(c, state, f->num_h_slices - 1, 0);
    FUNC11(c, state, f->num_v_slices - 1, 0);

    FUNC11(c, state, f->quant_table_count, 0);
    for (i = 0; i < f->quant_table_count; i++)
        FUNC12(c, f->quant_tables[i]);

    for (i = 0; i < f->quant_table_count; i++) {
        if (FUNC5(f->initial_states[i], f->context_count[i])) {
            FUNC10(c, state, 1);
            for (j = 0; j < f->context_count[i]; j++)
                for (k = 0; k < CONTEXT_SIZE; k++) {
                    int pred = j ? f->initial_states[i][j - 1][k] : 128;
                    FUNC11(c, state2[k],
                               (int8_t)(f->initial_states[i][j][k] - pred), 1);
                }
        } else {
            FUNC10(c, state, 0);
        }
    }

    if (f->version > 2) {
        FUNC11(c, state, f->ec, 0);
        FUNC11(c, state, f->intra = (f->avctx->gop_size < 2), 0);
    }

    f->avctx->extradata_size = FUNC8(c, 0);
    v = FUNC2(FUNC3(AV_CRC_32_IEEE), 0, f->avctx->extradata, f->avctx->extradata_size);
    FUNC1(f->avctx->extradata + f->avctx->extradata_size, v);
    f->avctx->extradata_size += 4;

    return 0;
}