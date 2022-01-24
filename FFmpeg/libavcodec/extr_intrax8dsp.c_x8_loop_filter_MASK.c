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
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(uint8_t *ptr, const ptrdiff_t a_stride,
                           const ptrdiff_t b_stride, int quant)
{
    int i, t;
    int p0, p1, p2, p3, p4, p5, p6, p7, p8, p9;
    int ql = (quant + 10) >> 3;

    for (i = 0; i < 8; i++, ptr += b_stride) {
        p0 = ptr[-5 * a_stride];
        p1 = ptr[-4 * a_stride];
        p2 = ptr[-3 * a_stride];
        p3 = ptr[-2 * a_stride];
        p4 = ptr[-1 * a_stride];
        p5 = ptr[0];
        p6 = ptr[1 * a_stride];
        p7 = ptr[2 * a_stride];
        p8 = ptr[3 * a_stride];
        p9 = ptr[4 * a_stride];

        t = (FUNC0(p1 - p2) <= ql) +
            (FUNC0(p2 - p3) <= ql) +
            (FUNC0(p3 - p4) <= ql) +
            (FUNC0(p4 - p5) <= ql);

        // You need at least 1 to be able to reach a total score of 6.
        if (t > 0) {
            t += (FUNC0(p5 - p6) <= ql) +
                 (FUNC0(p6 - p7) <= ql) +
                 (FUNC0(p7 - p8) <= ql) +
                 (FUNC0(p8 - p9) <= ql) +
                 (FUNC0(p0 - p1) <= ql);
            if (t >= 6) {
                int min, max;

                min = max = p1;
                min = FUNC2(min, p3);
                max = FUNC1(max, p3);
                min = FUNC2(min, p5);
                max = FUNC1(max, p5);
                min = FUNC2(min, p8);
                max = FUNC1(max, p8);
                if (max - min < 2 * quant) { // early stop
                    min = FUNC2(min, p2);
                    max = FUNC1(max, p2);
                    min = FUNC2(min, p4);
                    max = FUNC1(max, p4);
                    min = FUNC2(min, p6);
                    max = FUNC1(max, p6);
                    min = FUNC2(min, p7);
                    max = FUNC1(max, p7);
                    if (max - min < 2 * quant) {
                        ptr[-2 * a_stride] = (4 * p2 + 3 * p3 + 1 * p7 + 4) >> 3;
                        ptr[-1 * a_stride] = (3 * p2 + 3 * p4 + 2 * p7 + 4) >> 3;
                        ptr[0]             = (2 * p2 + 3 * p5 + 3 * p7 + 4) >> 3;
                        ptr[1 * a_stride]  = (1 * p2 + 3 * p6 + 4 * p7 + 4) >> 3;
                        continue;
                    }
                }
            }
        }
        {
            int x, x0, x1, x2;
            int m;

            x0 = (2 * p3 - 5 * p4 + 5 * p5 - 2 * p6 + 4) >> 3;
            if (FUNC0(x0) < quant) {
                x1 = (2 * p1 - 5 * p2 + 5 * p3 - 2 * p4 + 4) >> 3;
                x2 = (2 * p5 - 5 * p6 + 5 * p7 - 2 * p8 + 4) >> 3;

                x = FUNC0(x0) - FUNC2(FUNC0(x1), FUNC0(x2));
                m = p4 - p5;

                if (x > 0 && (m ^ x0) < 0) {
                    int32_t sign;

                    sign = m >> 31;
                    m    = (m ^ sign) - sign; // abs(m)
                    m  >>= 1;

                    x = 5 * x >> 3;

                    if (x > m)
                        x = m;

                    x = (x ^ sign) - sign;

                    ptr[-1 * a_stride] -= x;
                    ptr[0]             += x;
                }
            }
        }
    }
}