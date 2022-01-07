
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int av_clip_uint8 (int ) ;
 int wmv2_idct_col (int *) ;
 int wmv2_idct_row (int *) ;

__attribute__((used)) static void wmv2_idct_put_c(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;

    for (i = 0; i < 64; i += 8)
        wmv2_idct_row(block + i);
    for (i = 0; i < 8; i++)
        wmv2_idct_col(block + i);

    for (i = 0; i < 8; i++) {
        dest[0] = av_clip_uint8(block[0]);
        dest[1] = av_clip_uint8(block[1]);
        dest[2] = av_clip_uint8(block[2]);
        dest[3] = av_clip_uint8(block[3]);
        dest[4] = av_clip_uint8(block[4]);
        dest[5] = av_clip_uint8(block[5]);
        dest[6] = av_clip_uint8(block[6]);
        dest[7] = av_clip_uint8(block[7]);
        dest += line_size;
        block += 8;
    }
}
