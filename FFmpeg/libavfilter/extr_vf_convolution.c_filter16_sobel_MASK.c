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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (float,int /*<<< orphan*/ ,int) ; 
 float FUNC2 (float) ; 

__attribute__((used)) static void FUNC3(uint8_t *dstp, int width,
                           float scale, float delta, const int *const matrix,
                           const uint8_t *c[], int peak, int radius,
                           int dstride, int stride)
{
    uint16_t *dst = (uint16_t *)dstp;
    int x;

    for (x = 0; x < width; x++) {
        float suma = FUNC0(&c[0][2 * x]) * -1 + FUNC0(&c[1][2 * x]) * -2 + FUNC0(&c[2][2 * x]) * -1 +
                     FUNC0(&c[6][2 * x]) *  1 + FUNC0(&c[7][2 * x]) *  2 + FUNC0(&c[8][2 * x]) *  1;
        float sumb = FUNC0(&c[0][2 * x]) * -1 + FUNC0(&c[2][2 * x]) *  1 + FUNC0(&c[3][2 * x]) * -2 +
                     FUNC0(&c[5][2 * x]) *  2 + FUNC0(&c[6][2 * x]) * -1 + FUNC0(&c[8][2 * x]) *  1;

        dst[x] = FUNC1(FUNC2(suma*suma + sumb*sumb) * scale + delta, 0, peak);
    }
}