
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static void lowpass_line_complex_c(uint8_t *dstp, ptrdiff_t width, const uint8_t *srcp,
                                   ptrdiff_t mref, ptrdiff_t pref, int clip_max)
{
    const uint8_t *srcp_above = srcp + mref;
    const uint8_t *srcp_below = srcp + pref;
    const uint8_t *srcp_above2 = srcp + mref * 2;
    const uint8_t *srcp_below2 = srcp + pref * 2;
    int i, src_x, src_ab;
    for (i = 0; i < width; i++) {



        src_x = srcp[i] << 1;
        src_ab = srcp_above[i] + srcp_below[i];
        dstp[i] = av_clip_uint8((4 + ((srcp[i] + src_x + src_ab) << 1)
                                - srcp_above2[i] - srcp_below2[i]) >> 3);



        if (src_ab > src_x) {
            if (dstp[i] < srcp[i])
                dstp[i] = srcp[i];
        } else if (dstp[i] > srcp[i])
            dstp[i] = srcp[i];
    }
}
