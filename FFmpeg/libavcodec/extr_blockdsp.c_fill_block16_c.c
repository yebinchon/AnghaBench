
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void fill_block16_c(uint8_t *block, uint8_t value, ptrdiff_t line_size,
                           int h)
{
    int i;

    for (i = 0; i < h; i++) {
        memset(block, value, 16);
        block += line_size;
    }
}
