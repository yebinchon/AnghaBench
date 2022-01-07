
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float celt_inner_prod (float const*,float const*,int) ;
 int xcorr_kernel (float const*,float const*,float*,int) ;

__attribute__((used)) static void celt_pitch_xcorr(const float *x, const float *y,
                             float *xcorr, int len, int max_pitch)
{
    int i;

    for (i = 0; i < max_pitch - 3; i += 4) {
        float sum[4] = { 0, 0, 0, 0};

        xcorr_kernel(x, y + i, sum, len);

        xcorr[i] = sum[0];
        xcorr[i + 1] = sum[1];
        xcorr[i + 2] = sum[2];
        xcorr[i + 3] = sum[3];
    }

    for (; i < max_pitch; i++) {
        xcorr[i] = celt_inner_prod(x, y + i, len);
    }
}
