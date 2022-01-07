
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;


 scalar_t__ av_clip_uint8 (scalar_t__) ;

__attribute__((used)) static void rv34_idct_dc_add_c(uint8_t *dst, ptrdiff_t stride, int dc)
{
    int i, j;

    dc = (13*13*dc + 0x200) >> 10;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
            dst[j] = av_clip_uint8( dst[j] + dc );

        dst += stride;
    }
}
