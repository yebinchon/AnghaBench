
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int16_t ;


 int output_pixel (int *,int) ;

__attribute__((used)) static void yuv2p010lX_c(const int16_t *filter, int filterSize,
                         const int16_t **src, uint16_t *dest, int dstW,
                         int big_endian)
{
    int i, j;
    int shift = 17;

    for (i = 0; i < dstW; i++) {
        int val = 1 << (shift - 1);

        for (j = 0; j < filterSize; j++)
            val += src[j][i] * filter[j];

        output_pixel(&dest[i], val);
    }
}
