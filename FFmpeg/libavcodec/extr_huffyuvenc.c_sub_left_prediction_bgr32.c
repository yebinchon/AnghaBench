
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* diff_bytes ) (int*,int const*,int const*,int) ;} ;
struct TYPE_5__ {TYPE_1__ llvidencdsp; } ;
typedef TYPE_2__ HYuvContext ;


 int A ;
 int B ;
 int FFMIN (int,int) ;
 int G ;
 int R ;
 int stub1 (int*,int const*,int const*,int) ;

__attribute__((used)) static inline void sub_left_prediction_bgr32(HYuvContext *s, uint8_t *dst,
                                             const uint8_t *src, int w,
                                             int *red, int *green, int *blue,
                                             int *alpha)
{
    int i;
    int r, g, b, a;
    int min_width = FFMIN(w, 8);
    r = *red;
    g = *green;
    b = *blue;
    a = *alpha;

    for (i = 0; i < min_width; i++) {
        const int rt = src[i * 4 + R];
        const int gt = src[i * 4 + G];
        const int bt = src[i * 4 + B];
        const int at = src[i * 4 + A];
        dst[i * 4 + R] = rt - r;
        dst[i * 4 + G] = gt - g;
        dst[i * 4 + B] = bt - b;
        dst[i * 4 + A] = at - a;
        r = rt;
        g = gt;
        b = bt;
        a = at;
    }

    s->llvidencdsp.diff_bytes(dst + 32, src + 32, src + 32 - 4, w * 4 - 32);

    *red = src[(w - 1) * 4 + R];
    *green = src[(w - 1) * 4 + G];
    *blue = src[(w - 1) * 4 + B];
    *alpha = src[(w - 1) * 4 + A];
}
