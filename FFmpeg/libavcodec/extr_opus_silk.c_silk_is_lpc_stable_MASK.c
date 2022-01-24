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
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ INT32_MAX ; 
 scalar_t__ INT32_MIN ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 int FUNC4 (int,scalar_t__) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(const int16_t lpc[16], int order)
{
    int k, j, DC_resp = 0;
    int32_t lpc32[2][16];       // Q24
    int totalinvgain = 1 << 30; // 1.0 in Q30
    int32_t *row = lpc32[0], *prevrow;

    /* initialize the first row for the Levinson recursion */
    for (k = 0; k < order; k++) {
        DC_resp += lpc[k];
        row[k] = lpc[k] * 4096;
    }

    if (DC_resp >= 4096)
        return 0;

    /* check if prediction gain pushes any coefficients too far */
    for (k = order - 1; 1; k--) {
        int rc;      // Q31; reflection coefficient
        int gaindiv; // Q30; inverse of the gain (the divisor)
        int gain;    // gain for this reflection coefficient
        int fbits;   // fractional bits used for the gain
        int error;   // Q29; estimate of the error of our partial estimate of 1/gaindiv

        if (FUNC0(row[k]) > 16773022)
            return 0;

        rc      = -(row[k] * 128);
        gaindiv = (1 << 30) - FUNC1(rc, rc);

        totalinvgain = FUNC1(totalinvgain, gaindiv) << 2;
        if (k == 0)
            return (totalinvgain >= 107374);

        /* approximate 1.0/gaindiv */
        fbits = FUNC5(gaindiv);
        gain  = ((1 << 29) - 1) / (gaindiv >> (fbits + 1 - 16)); // Q<fbits-16>
        error = (1 << 29) - FUNC2(gaindiv << (15 + 16 - fbits), gain, 16);
        gain  = ((gain << 16) + (error * gain >> 13));

        /* switch to the next row of the LPC coefficients */
        prevrow = row;
        row = lpc32[k & 1];

        for (j = 0; j < k; j++) {
            int x = FUNC4(prevrow[j], FUNC3(prevrow[k - j - 1], rc, 31));
            int64_t tmp = FUNC3(x, gain, fbits);

            /* per RFC 8251 section 6, if this calculation overflows, the filter
               is considered unstable. */
            if (tmp < INT32_MIN || tmp > INT32_MAX)
                return 0;

            row[j] = (int32_t)tmp;
        }
    }
}