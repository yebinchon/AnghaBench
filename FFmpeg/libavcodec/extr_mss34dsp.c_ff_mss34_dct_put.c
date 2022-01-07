
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int DCT_TEMPLATE (int*,int,int ,int) ;
 int SOP_COL ;
 int SOP_ROW ;
 int av_clip_uint8 (int) ;

void ff_mss34_dct_put(uint8_t *dst, ptrdiff_t stride, int *block)
{
    int i, j;
    int *ptr;

    ptr = block;
    for (i = 0; i < 8; i++) {
        DCT_TEMPLATE(ptr, 1, SOP_ROW, 13);
        ptr += 8;
    }

    ptr = block;
    for (i = 0; i < 8; i++) {
        DCT_TEMPLATE(ptr, 8, SOP_COL, 22);
        ptr++;
    }

    ptr = block;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++)
            dst[i] = av_clip_uint8(ptr[i] + 128);
        dst += stride;
        ptr += 8;
    }
}
