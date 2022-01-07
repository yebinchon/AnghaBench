
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void residual_filter(int16_t* out, const int16_t* filter_coeffs, const int16_t* in,
                            int subframe_size)
{
    int i, n;

    for (n = subframe_size - 1; n >= 0; n--) {
        int sum = 0x800;
        for (i = 0; i < 10; i++)
            sum += filter_coeffs[i] * in[n - i - 1];

        out[n] = in[n] + (sum >> 12);
    }
}
