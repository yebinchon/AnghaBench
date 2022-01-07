
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;


 int yuv2p010l1_c (int const*,int *,int,int) ;

__attribute__((used)) static void yuv2p010l1_BE_c(const int16_t *src,
                            uint8_t *dest, int dstW,
                            const uint8_t *dither, int offset)
{
    yuv2p010l1_c(src, (uint16_t*)dest, dstW, 1);
}
