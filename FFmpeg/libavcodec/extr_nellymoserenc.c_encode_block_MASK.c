#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float* mdct_out; TYPE_1__* avctx; } ;
struct TYPE_7__ {scalar_t__ trellis; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ NellyMoserEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,float) ; 
 int NELLY_BANDS ; 
 int NELLY_BUF_LEN ; 
 int NELLY_DETAIL_BITS ; 
 int NELLY_FILL_LEN ; 
 int NELLY_HEADER_BITS ; 
 int POW_TABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (float) ; 
 int* ff_nelly_band_sizes_table ; 
 scalar_t__* ff_nelly_delta_table ; 
 float* ff_nelly_dequantization_table ; 
 int /*<<< orphan*/  FUNC4 (float*,int*) ; 
 int* ff_nelly_init_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,float*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,float*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 double FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,unsigned char*) ; 
 int* pow_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int* quant_lut ; 
 scalar_t__* quant_lut_add ; 
 float* quant_lut_mul ; 
 scalar_t__* quant_lut_offset ; 

__attribute__((used)) static void FUNC14(NellyMoserEncodeContext *s, unsigned char *output, int output_size)
{
    PutBitContext pb;
    int i, j, band, block, best_idx, power_idx = 0;
    float power_val, coeff, coeff_sum;
    float pows[NELLY_FILL_LEN];
    int bits[NELLY_BUF_LEN], idx_table[NELLY_BANDS];
    float cand[NELLY_BANDS];

    FUNC1(s);

    FUNC8(&pb, output, output_size);

    i = 0;
    for (band = 0; band < NELLY_BANDS; band++) {
        coeff_sum = 0;
        for (j = 0; j < ff_nelly_band_sizes_table[band]; i++, j++) {
            coeff_sum += s->mdct_out[i                ] * s->mdct_out[i                ]
                       + s->mdct_out[i + NELLY_BUF_LEN] * s->mdct_out[i + NELLY_BUF_LEN];
        }
        cand[band] =
            FUNC9(FUNC0(1.0, coeff_sum / (ff_nelly_band_sizes_table[band] << 7))) * 1024.0;
    }

    if (s->avctx->trellis) {
        FUNC6(s, cand, idx_table);
    } else {
        FUNC7(s, cand, idx_table);
    }

    i = 0;
    for (band = 0; band < NELLY_BANDS; band++) {
        if (band) {
            power_idx += ff_nelly_delta_table[idx_table[band]];
            FUNC11(&pb, 5, idx_table[band]);
        } else {
            power_idx = ff_nelly_init_table[idx_table[0]];
            FUNC11(&pb, 6, idx_table[0]);
        }
        power_val = pow_table[power_idx & 0x7FF] / (1 << ((power_idx >> 11) + POW_TABLE_OFFSET));
        for (j = 0; j < ff_nelly_band_sizes_table[band]; i++, j++) {
            s->mdct_out[i] *= power_val;
            s->mdct_out[i + NELLY_BUF_LEN] *= power_val;
            pows[i] = power_idx;
        }
    }

    FUNC4(pows, bits);

    for (block = 0; block < 2; block++) {
        for (i = 0; i < NELLY_FILL_LEN; i++) {
            if (bits[i] > 0) {
                const float *table = ff_nelly_dequantization_table + (1 << bits[i]) - 1;
                coeff = s->mdct_out[block * NELLY_BUF_LEN + i];
                best_idx =
                    quant_lut[FUNC2 (
                            coeff * quant_lut_mul[bits[i]] + quant_lut_add[bits[i]],
                            quant_lut_offset[bits[i]],
                            quant_lut_offset[bits[i]+1] - 1
                            )];
                if (FUNC3(coeff - table[best_idx]) > FUNC3(coeff - table[best_idx + 1]))
                    best_idx++;

                FUNC11(&pb, bits[i], best_idx);
            }
        }
        if (!block)
            FUNC11(&pb, NELLY_HEADER_BITS + NELLY_DETAIL_BITS - FUNC12(&pb), 0);
    }

    FUNC5(&pb);
    FUNC10(FUNC13(&pb), 0, output + output_size - FUNC13(&pb));
}