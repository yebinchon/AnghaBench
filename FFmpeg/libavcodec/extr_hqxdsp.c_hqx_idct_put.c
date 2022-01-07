
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef scalar_t__ int16_t ;


 int av_clip_uintp2 (scalar_t__,int) ;
 int idct_col (scalar_t__*,int const*) ;
 int idct_row (scalar_t__*) ;

__attribute__((used)) static void hqx_idct_put(uint16_t *dst, ptrdiff_t stride,
                         int16_t *block, const uint8_t *quant)
{
    int i, j;

    for (i = 0; i < 8; i++)
        idct_col(block + i, quant + i);
    for (i = 0; i < 8; i++)
        idct_row(block + i * 8);

    for (i = 0; i < 8; i++) {
        for (j = 0; j < 8; j++) {
            int v = av_clip_uintp2(block[j + i * 8] + 0x800, 12);
            dst[j] = (v << 4) | (v >> 8);
        }
        dst += stride >> 1;
    }
}
