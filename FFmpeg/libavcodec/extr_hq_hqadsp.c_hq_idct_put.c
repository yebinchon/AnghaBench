
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int av_clip_uint8 (int ) ;
 int idct_col (int *) ;
 int idct_row (int *) ;

__attribute__((used)) static void hq_idct_put(uint8_t *dst, int stride, int16_t *block)
{
    int i, j;

    for (i = 0; i < 8; i++)
        idct_row(block + i * 8);
    for (i = 0; i < 8; i++)
        idct_col(block + i);

    for (i = 0; i < 8; i++) {
        for (j = 0; j < 8; j++)
            dst[j] = av_clip_uint8(block[j + i * 8]);
        dst += stride;
    }
}
