
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PITCH_BUF_SIZE ;
 int celt_pitch_xcorr (float const*,float const*,float*,int,int) ;

__attribute__((used)) static int celt_autocorr(const float *x,
                         float *ac,
                         const float *window,
                         int overlap,
                         int lag,
                         int n)
{
    int fastN = n - lag;
    int shift;
    const float *xptr;
    float xx[PITCH_BUF_SIZE>>1];

    if (overlap == 0) {
        xptr = x;
    } else {
        for (int i = 0; i < n; i++)
            xx[i] = x[i];
        for (int i = 0; i < overlap; i++) {
            xx[i] = x[i] * window[i];
            xx[n-i-1] = x[n-i-1] * window[i];
        }
        xptr = xx;
    }

    shift = 0;
    celt_pitch_xcorr(xptr, xptr, ac, fastN, lag+1);

    for (int k = 0; k <= lag; k++) {
        float d = 0.f;

        for (int i = k + fastN; i < n; i++)
            d += xptr[i] * xptr[i-k];
        ac[k] += d;
    }

    return shift;
}
