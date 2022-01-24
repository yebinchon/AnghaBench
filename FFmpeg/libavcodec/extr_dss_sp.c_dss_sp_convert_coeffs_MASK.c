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
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int32_t *lpc_filter, int32_t *coeffs)
{
    int a, a_plus, i;

    coeffs[0] = 0x2000;
    for (a = 0; a < 14; a++) {
        a_plus         = a + 1;
        coeffs[a_plus] = lpc_filter[a] >> 2;
        if (a_plus / 2 >= 1) {
            for (i = 1; i <= a_plus / 2; i++) {
                int coeff_1, coeff_2, tmp;

                coeff_1 = coeffs[i];
                coeff_2 = coeffs[a_plus - i];

                tmp = FUNC0(coeff_1, lpc_filter[a], coeff_2);
                coeffs[i] = FUNC1(tmp);

                tmp = FUNC0(coeff_2, lpc_filter[a], coeff_1);
                coeffs[a_plus - i] = FUNC1(tmp);
            }
        }
    }
}