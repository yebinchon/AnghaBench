
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int av_clip (int,int ,int) ;
 int av_le2ne16 (int const) ;

__attribute__((used)) static void lowpass_line_complex_c_16(uint8_t *dst8, ptrdiff_t width, const uint8_t *src8,
                                      ptrdiff_t mref, ptrdiff_t pref, int clip_max)
{
    uint16_t *dstp = (uint16_t *)dst8;
    const uint16_t *srcp = (const uint16_t *)src8;
    const uint16_t *srcp_above = srcp + mref / 2;
    const uint16_t *srcp_below = srcp + pref / 2;
    const uint16_t *srcp_above2 = srcp + mref;
    const uint16_t *srcp_below2 = srcp + pref;
    int i, dst_le, src_le, src_x, src_ab;
    for (i = 0; i < width; i++) {



        src_le = av_le2ne16(srcp[i]);
        src_x = src_le << 1;
        src_ab = av_le2ne16(srcp_above[i]) + av_le2ne16(srcp_below[i]);
        dst_le = av_clip((4 + ((src_le + src_x + src_ab) << 1)
                         - av_le2ne16(srcp_above2[i])
                         - av_le2ne16(srcp_below2[i])) >> 3, 0, clip_max);



        if (src_ab > src_x) {
            if (dst_le < src_le)
                dstp[i] = av_le2ne16(src_le);
            else
                dstp[i] = av_le2ne16(dst_le);
        } else if (dst_le > src_le) {
            dstp[i] = av_le2ne16(src_le);
        } else
            dstp[i] = av_le2ne16(dst_le);
    }
}
