
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FFMIN (float,float) ;

__attribute__((used)) static inline void quantize_bands(int *out, const float *in, const float *scaled,
                                  int size, int is_signed, int maxval, const float Q34,
                                  const float rounding)
{
    int i;
    for (i = 0; i < size; i++) {
        float qc = scaled[i] * Q34;
        int tmp = (int)FFMIN(qc + rounding, (float)maxval);
        if (is_signed && in[i] < 0.0f) {
            tmp = -tmp;
        }
        out[i] = tmp;
    }
}
