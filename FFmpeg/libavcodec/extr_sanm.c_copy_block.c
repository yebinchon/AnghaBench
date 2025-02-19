
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int copy_block16 (int *,int *,int,int,int) ;
 int copy_block4 (int *,int *,int,int,int) ;
 int copy_block8 (int *,int *,int,int,int) ;

__attribute__((used)) static void copy_block(uint16_t *pdest, uint16_t *psrc, int block_size, ptrdiff_t pitch)
{
    uint8_t *dst = (uint8_t *)pdest;
    uint8_t *src = (uint8_t *)psrc;
    ptrdiff_t stride = pitch * 2;

    switch (block_size) {
    case 2:
        copy_block4(dst, src, stride, stride, 2);
        break;
    case 4:
        copy_block8(dst, src, stride, stride, 4);
        break;
    case 8:
        copy_block16(dst, src, stride, stride, 8);
        break;
    }
}
