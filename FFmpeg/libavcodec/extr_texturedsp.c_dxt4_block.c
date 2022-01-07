
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int dxt5_block_internal (int *,int,int const*) ;
 int premult2straight (int *) ;

__attribute__((used)) static int dxt4_block(uint8_t *dst, ptrdiff_t stride, const uint8_t *block)
{
    int x, y;

    dxt5_block_internal(dst, stride, block);



    for (y = 0; y < 4; y++)
        for (x = 0; x < 4; x++)
            premult2straight(dst + x * 4 + y * stride);

    return 16;
}
