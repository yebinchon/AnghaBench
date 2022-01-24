#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_3__ {int (* scalarproduct_int16 ) (int*,int*,int) ;} ;
typedef  TYPE_1__ AudioDSPContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int*,int*,int) ; 
 int FUNC4 (int*,int*,int) ; 

__attribute__((used)) static int16_t FUNC5(AudioDSPContext *adsp, int16_t *lp_gn,
                             const int16_t *lp_gd, int16_t* speech,
                             int subframe_size)
{
    int rh1,rh0; // (3.12)
    int temp;
    int i;
    int gain_term;

    lp_gn[10] = 4096; //1.0 in (3.12)

    /* Apply 1/A(z/FORMANT_PP_FACTOR_DEN) filter to hf. */
    FUNC2(lp_gn + 11, lp_gd + 1, lp_gn + 11, 22, 10, 0, 0, 0x800);
    /* Now lp_gn (starting with 10) contains impulse response
       of A(z/FORMANT_PP_FACTOR_NUM)/A(z/FORMANT_PP_FACTOR_DEN) filter. */

    rh0 = adsp->scalarproduct_int16(lp_gn + 10, lp_gn + 10, 20);
    rh1 = adsp->scalarproduct_int16(lp_gn + 10, lp_gn + 11, 20);

    /* downscale to avoid overflow */
    temp = FUNC1(rh0) - 14;
    if (temp > 0) {
        rh0 >>= temp;
        rh1 >>= temp;
    }

    if (FUNC0(rh1) > rh0 || !rh0)
        return 0;

    gain_term = 0;
    for (i = 0; i < 20; i++)
        gain_term += FUNC0(lp_gn[i + 10]);
    gain_term >>= 2; // (3.12) -> (5.10)

    if (gain_term > 0x400) { // 1.0 in (5.10)
        temp = 0x2000000 / gain_term; // 1.0/gain_term in (0.15)
        for (i = 0; i < subframe_size; i++)
            speech[i] = (speech[i] * temp + 0x4000) >> 15;
    }

    return -(rh1 * (1 << 15)) / rh0;
}