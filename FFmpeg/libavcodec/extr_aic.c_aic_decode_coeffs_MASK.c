#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint8_t ;
typedef  unsigned int int16_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,int) ; 
 int* aic_num_band_coeffs ; 
 size_t** aic_scan ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, int16_t *dst,
                             int band, int slice_width, int force_chroma)
{
    int has_skips, coeff_type, coeff_bits, skip_type, skip_bits;
    const int num_coeffs = aic_num_band_coeffs[band];
    const uint8_t *scan = aic_scan[band | force_chroma];
    int mb, idx;
    unsigned val;

    if (FUNC3(gb) < 5)
        return AVERROR_INVALIDDATA;

    has_skips  = FUNC2(gb);
    coeff_type = FUNC2(gb);
    coeff_bits = FUNC1(gb, 3);

    if (has_skips) {
        skip_type = FUNC2(gb);
        skip_bits = FUNC1(gb, 3);

        for (mb = 0; mb < slice_width; mb++) {
            idx = -1;
            do {
                FUNC0(val, skip_type, skip_bits);
                if (val >= 0x10000)
                    return AVERROR_INVALIDDATA;
                idx += val + 1;
                if (idx >= num_coeffs)
                    break;
                FUNC0(val, coeff_type, coeff_bits);
                val++;
                if (val >= 0x10000)
                    return AVERROR_INVALIDDATA;
                dst[scan[idx]] = val;
            } while (idx < num_coeffs - 1);
            dst += num_coeffs;
        }
    } else {
        for (mb = 0; mb < slice_width; mb++) {
            for (idx = 0; idx < num_coeffs; idx++) {
                FUNC0(val, coeff_type, coeff_bits);
                if (val >= 0x10000)
                    return AVERROR_INVALIDDATA;
                dst[scan[idx]] = val;
            }
            dst += num_coeffs;
        }
    }
    return 0;
}