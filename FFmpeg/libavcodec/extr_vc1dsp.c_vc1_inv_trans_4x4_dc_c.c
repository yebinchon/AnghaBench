
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int av_clip_uint8 (int ) ;

__attribute__((used)) static void vc1_inv_trans_4x4_dc_c(uint8_t *dest, ptrdiff_t stride, int16_t *block)
{
    int i;
    int dc = block[0];

    dc = (17 * dc + 4) >> 3;
    dc = (17 * dc + 64) >> 7;

    for (i = 0; i < 4; i++) {
        dest[0] = av_clip_uint8(dest[0] + dc);
        dest[1] = av_clip_uint8(dest[1] + dc);
        dest[2] = av_clip_uint8(dest[2] + dc);
        dest[3] = av_clip_uint8(dest[3] + dc);
        dest += stride;
    }
}
