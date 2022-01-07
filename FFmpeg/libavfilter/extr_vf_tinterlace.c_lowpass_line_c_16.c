
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int av_le2ne16 (int const) ;

__attribute__((used)) static void lowpass_line_c_16(uint8_t *dst8, ptrdiff_t width, const uint8_t *src8,
                              ptrdiff_t mref, ptrdiff_t pref, int clip_max)
{
    uint16_t *dstp = (uint16_t *)dst8;
    const uint16_t *srcp = (const uint16_t *)src8;
    const uint16_t *srcp_above = srcp + mref / 2;
    const uint16_t *srcp_below = srcp + pref / 2;
    int i, src_x;
    for (i = 0; i < width; i++) {



        src_x = av_le2ne16(srcp[i]) << 1;
        dstp[i] = av_le2ne16((1 + src_x + av_le2ne16(srcp_above[i])
                             + av_le2ne16(srcp_below[i])) >> 2);
    }
}
