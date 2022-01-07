
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int C1 ;
 int C2 ;
 int CN_SHIFT ;
 int C_SHIFT ;
 int av_clip_uint8 (int) ;

__attribute__((used)) static inline void idct4col_put(uint8_t *dest, ptrdiff_t line_size, const int16_t *col)
{
    int c0, c1, c2, c3, a0, a1, a2, a3;

    a0 = col[8*0];
    a1 = col[8*2];
    a2 = col[8*4];
    a3 = col[8*6];
    c0 = ((a0 + a2) * (1 << CN_SHIFT - 1)) + (1 << (C_SHIFT - 1));
    c2 = ((a0 - a2) * (1 << CN_SHIFT - 1)) + (1 << (C_SHIFT - 1));
    c1 = a1 * C1 + a3 * C2;
    c3 = a1 * C2 - a3 * C1;
    dest[0] = av_clip_uint8((c0 + c1) >> C_SHIFT);
    dest += line_size;
    dest[0] = av_clip_uint8((c2 + c3) >> C_SHIFT);
    dest += line_size;
    dest[0] = av_clip_uint8((c2 - c3) >> C_SHIFT);
    dest += line_size;
    dest[0] = av_clip_uint8((c0 - c1) >> C_SHIFT);
}
