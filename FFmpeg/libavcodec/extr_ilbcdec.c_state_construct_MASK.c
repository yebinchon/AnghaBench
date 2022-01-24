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
typedef  size_t int16_t ;

/* Variables and functions */
 int LPC_FILTERORDER ; 
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int STATE_SHORT_LEN_30MS ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,size_t*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,size_t*,int,size_t) ; 
 size_t* frg_quant_mod ; 
 int /*<<< orphan*/ * ilbc_state ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(int16_t ifm, int16_t *idx,
                           int16_t *synt_denum, int16_t *Out_fix,
                           int16_t len)
{
    int k;
    int16_t maxVal;
    int16_t *tmp1, *tmp2, *tmp3;
    /* Stack based */
    int16_t numerator[1 + LPC_FILTERORDER];
    int16_t sampleValVec[2 * STATE_SHORT_LEN_30MS + LPC_FILTERORDER];
    int16_t sampleMaVec[2 * STATE_SHORT_LEN_30MS + LPC_FILTERORDER];
    int16_t *sampleVal = &sampleValVec[LPC_FILTERORDER];
    int16_t *sampleMa = &sampleMaVec[LPC_FILTERORDER];
    int16_t *sampleAr = &sampleValVec[LPC_FILTERORDER];

    /* initialization of coefficients */

    for (k = 0; k < LPC_FILTERORDER + 1; k++) {
        numerator[k] = synt_denum[LPC_FILTERORDER - k];
    }

    /* decoding of the maximum value */

    maxVal = frg_quant_mod[ifm];

    /* decoding of the sample values */
    tmp1 = sampleVal;
    tmp2 = &idx[len - 1];

    if (ifm < 37) {
        for (k = 0; k < len; k++) {
            /*the shifting is due to the Q13 in sq4_fixQ13[i], also the adding of 2097152 (= 0.5 << 22)
               maxVal is in Q8 and result is in Q(-1) */
            (*tmp1) = (int16_t) ((FUNC0(maxVal, ilbc_state[(*tmp2)]) + 2097152) >> 22);
            tmp1++;
            tmp2--;
        }
    } else if (ifm < 59) {
        for (k = 0; k < len; k++) {
            /*the shifting is due to the Q13 in sq4_fixQ13[i], also the adding of 262144 (= 0.5 << 19)
               maxVal is in Q5 and result is in Q(-1) */
            (*tmp1) = (int16_t) ((FUNC0(maxVal, ilbc_state[(*tmp2)]) + 262144) >> 19);
            tmp1++;
            tmp2--;
        }
    } else {
        for (k = 0; k < len; k++) {
            /*the shifting is due to the Q13 in sq4_fixQ13[i], also the adding of 65536 (= 0.5 << 17)
               maxVal is in Q3 and result is in Q(-1) */
            (*tmp1) = (int16_t) ((FUNC0(maxVal, ilbc_state[(*tmp2)]) + 65536) >> 17);
            tmp1++;
            tmp2--;
        }
    }

    /* Set the rest of the data to zero */
    FUNC3(&sampleVal[len], 0, len * 2);

    /* circular convolution with all-pass filter */

    /* Set the state to zero */
    FUNC3(sampleValVec, 0, LPC_FILTERORDER * 2);

    /* Run MA filter + AR filter */
    FUNC2(sampleVal, sampleMa, numerator, LPC_FILTERORDER + 1, len + LPC_FILTERORDER);
    FUNC3(&sampleMa[len + LPC_FILTERORDER], 0, (len - LPC_FILTERORDER) * 2);
    FUNC1(sampleMa, sampleAr, synt_denum, LPC_FILTERORDER + 1, 2 * len);

    tmp1 = &sampleAr[len - 1];
    tmp2 = &sampleAr[2 * len - 1];
    tmp3 = Out_fix;
    for (k = 0; k < len; k++) {
        (*tmp3) = (*tmp1) + (*tmp2);
        tmp1--;
        tmp2--;
        tmp3++;
    }
}