
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int FFABS (int) ;
 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 int MULH (int,int) ;
 int MULL (int,int,int) ;
 scalar_t__ ROUND_MULL (int,int,int) ;
 int av_sat_sub32 (int,scalar_t__) ;
 int opus_ilog (int) ;

__attribute__((used)) static inline int silk_is_lpc_stable(const int16_t lpc[16], int order)
{
    int k, j, DC_resp = 0;
    int32_t lpc32[2][16];
    int totalinvgain = 1 << 30;
    int32_t *row = lpc32[0], *prevrow;


    for (k = 0; k < order; k++) {
        DC_resp += lpc[k];
        row[k] = lpc[k] * 4096;
    }

    if (DC_resp >= 4096)
        return 0;


    for (k = order - 1; 1; k--) {
        int rc;
        int gaindiv;
        int gain;
        int fbits;
        int error;

        if (FFABS(row[k]) > 16773022)
            return 0;

        rc = -(row[k] * 128);
        gaindiv = (1 << 30) - MULH(rc, rc);

        totalinvgain = MULH(totalinvgain, gaindiv) << 2;
        if (k == 0)
            return (totalinvgain >= 107374);


        fbits = opus_ilog(gaindiv);
        gain = ((1 << 29) - 1) / (gaindiv >> (fbits + 1 - 16));
        error = (1 << 29) - MULL(gaindiv << (15 + 16 - fbits), gain, 16);
        gain = ((gain << 16) + (error * gain >> 13));


        prevrow = row;
        row = lpc32[k & 1];

        for (j = 0; j < k; j++) {
            int x = av_sat_sub32(prevrow[j], ROUND_MULL(prevrow[k - j - 1], rc, 31));
            int64_t tmp = ROUND_MULL(x, gain, fbits);



            if (tmp < INT32_MIN || tmp > INT32_MAX)
                return 0;

            row[j] = (int32_t)tmp;
        }
    }
}
