
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int AV_LOG_WARNING ;
 int av_assert1 (int) ;
 int av_clip_int16 (int) ;
 int av_log (int *,int ,char*) ;

void ff_acelp_interpolate(int16_t* out, const int16_t* in,
                          const int16_t* filter_coeffs, int precision,
                          int frac_pos, int filter_length, int length)
{
    int n, i;

    av_assert1(frac_pos >= 0 && frac_pos < precision);

    for (n = 0; n < length; n++) {
        int idx = 0;
        int v = 0x4000;

        for (i = 0; i < filter_length;) {
            v += in[n + i] * filter_coeffs[idx + frac_pos];
            idx += precision;
            i++;
            v += in[n - i] * filter_coeffs[idx - frac_pos];
        }
        if (av_clip_int16(v >> 15) != (v >> 15))
            av_log(((void*)0), AV_LOG_WARNING, "overflow that would need clipping in ff_acelp_interpolate()\n");
        out[n] = v >> 15;
    }
}
