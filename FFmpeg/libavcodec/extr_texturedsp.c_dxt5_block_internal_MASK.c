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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(uint8_t *dst, ptrdiff_t stride,
                                       const uint8_t *block)
{
    int x, y;
    uint32_t colors[4];
    uint8_t alpha_indices[16];
    uint16_t color0 = FUNC0(block + 8);
    uint16_t color1 = FUNC0(block + 10);
    uint32_t code   = FUNC1(block + 12);
    uint8_t alpha0  = *(block);
    uint8_t alpha1  = *(block + 1);

    FUNC3(alpha_indices, block + 2);

    FUNC4(colors, color0, color1, 1, 0);

    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            int alpha_code = alpha_indices[x + y * 4];
            uint32_t pixel;
            uint8_t alpha;

            if (alpha_code == 0) {
                alpha = alpha0;
            } else if (alpha_code == 1) {
                alpha = alpha1;
            } else {
                if (alpha0 > alpha1) {
                    alpha = (uint8_t) (((8 - alpha_code) * alpha0 +
                                        (alpha_code - 1) * alpha1) / 7);
                } else {
                    if (alpha_code == 6) {
                        alpha = 0;
                    } else if (alpha_code == 7) {
                        alpha = 255;
                    } else {
                        alpha = (uint8_t) (((6 - alpha_code) * alpha0 +
                                            (alpha_code - 1) * alpha1) / 5);
                    }
                }
            }
            pixel = colors[code & 3] | ((unsigned)alpha << 24);
            code >>= 2;
            FUNC2(dst + x * 4, pixel);
        }
        dst += stride;
    }
}