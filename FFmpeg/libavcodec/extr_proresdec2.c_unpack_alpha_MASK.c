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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void inline FUNC7(GetBitContext *gb, uint16_t *dst, int num_coeffs,
                                const int num_bits, const int decode_precision) {
    const int mask = (1 << num_bits) - 1;
    int i, idx, val, alpha_val;

    idx       = 0;
    alpha_val = mask;
    do {
        do {
            if (FUNC5(gb)) {
                val = FUNC4(gb, num_bits);
            } else {
                int sign;
                val  = FUNC4(gb, num_bits == 16 ? 7 : 4);
                sign = val & 1;
                val  = (val + 2) >> 1;
                if (sign)
                    val = -val;
            }
            alpha_val = (alpha_val + val) & mask;
            if (num_bits == 16) {
                if (decode_precision == 10) {
                    dst[idx++] = FUNC0(alpha_val);
                } else { /* 12b */
                    dst[idx++] = FUNC1(alpha_val);
                }
            } else {
                if (decode_precision == 10) {
                    dst[idx++] = FUNC2(alpha_val);
                } else { /* 12b */
                    dst[idx++] = FUNC3(alpha_val);
                }
            }
            if (idx >= num_coeffs)
                break;
        } while (FUNC6(gb)>0 && FUNC5(gb));
        val = FUNC4(gb, 4);
        if (!val)
            val = FUNC4(gb, 11);
        if (idx + val > num_coeffs)
            val = num_coeffs - idx;
        if (num_bits == 16) {
            for (i = 0; i < val; i++) {
                if (decode_precision == 10) {
                    dst[idx++] = FUNC0(alpha_val);
                } else { /* 12b */
                    dst[idx++] = FUNC1(alpha_val);
                }
            }
        } else {
            for (i = 0; i < val; i++) {
                if (decode_precision == 10) {
                    dst[idx++] = FUNC2(alpha_val);
                } else { /* 12b */
                    dst[idx++] = FUNC3(alpha_val);
                }
            }
        }
    } while (idx < num_coeffs);
}