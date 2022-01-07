
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void ff_acelp_interpolatef(float *out, const float *in,
                           const float *filter_coeffs, int precision,
                           int frac_pos, int filter_length, int length)
{
    int n, i;

    for (n = 0; n < length; n++) {
        int idx = 0;
        float v = 0;

        for (i = 0; i < filter_length;) {
            v += in[n + i] * filter_coeffs[idx + frac_pos];
            idx += precision;
            i++;
            v += in[n - i] * filter_coeffs[idx - frac_pos];
        }
        out[n] = v;
    }
}
