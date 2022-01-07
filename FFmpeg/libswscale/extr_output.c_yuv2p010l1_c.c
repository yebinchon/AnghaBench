
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int16_t ;


 int output_pixel (int *,int) ;

__attribute__((used)) static void yuv2p010l1_c(const int16_t *src,
                         uint16_t *dest, int dstW,
                         int big_endian)
{
    int i;
    int shift = 5;

    for (i = 0; i < dstW; i++) {
        int val = src[i] + (1 << (shift - 1));
        output_pixel(&dest[i], val);
    }
}
