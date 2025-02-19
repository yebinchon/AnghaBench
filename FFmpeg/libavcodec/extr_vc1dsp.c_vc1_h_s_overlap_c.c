
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void vc1_h_s_overlap_c(int16_t *left, int16_t *right, int left_stride, int right_stride, int flags)
{
    int i;
    int a, b, c, d;
    int d1, d2;
    int rnd1 = flags & 2 ? 3 : 4;
    int rnd2 = 7 - rnd1;
    for (i = 0; i < 8; i++) {
        a = left[6];
        b = left[7];
        c = right[0];
        d = right[1];
        d1 = a - d;
        d2 = a - d + b - c;

        left[6] = ((a * 8) - d1 + rnd1) >> 3;
        left[7] = ((b * 8) - d2 + rnd2) >> 3;
        right[0] = ((c * 8) + d2 + rnd1) >> 3;
        right[1] = ((d * 8) + d1 + rnd2) >> 3;

        right += right_stride;
        left += left_stride;
        if (flags & 1) {
            rnd2 = 7 - rnd2;
            rnd1 = 7 - rnd1;
        }
    }
}
