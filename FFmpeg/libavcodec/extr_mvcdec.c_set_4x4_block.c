
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AV_WN32A (int *,int ) ;

__attribute__((used)) static void set_4x4_block(uint8_t *dst, int linesize, uint32_t pixel)
{
    int i, j;
    for (j = 0; j < 4; j++)
        for (i = 0; i < 4; i++)
            AV_WN32A(dst + j * linesize + i * 4, pixel);
}
