
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int AV_RN64 (int *) ;
 int AV_WN64 (int *,int ) ;

__attribute__((used)) static void get(uint8_t *pixels, int stride, int16_t* block)
{
    int i;

    for (i = 0; i < 8; i++) {
        AV_WN64(block, AV_RN64(pixels));
        AV_WN64(block+4, AV_RN64(pixels+8));
        pixels += stride;
        block += 8;
    }
}
