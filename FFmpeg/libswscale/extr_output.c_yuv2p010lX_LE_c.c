
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;


 int yuv2p010lX_c (int const*,int,int const**,int *,int,int ) ;

__attribute__((used)) static void yuv2p010lX_LE_c(const int16_t *filter, int filterSize,
                            const int16_t **src, uint8_t *dest, int dstW,
                            const uint8_t *dither, int offset)
{
    yuv2p010lX_c(filter, filterSize, src, (uint16_t*)dest, dstW, 0);
}
