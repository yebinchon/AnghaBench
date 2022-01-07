
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int idct4col_add (int *,int ,int *) ;
 int idctRowCondDC_int16_8bit (int *,int ) ;

void ff_simple_idct84_add(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;


    for(i=0; i<4; i++) {
        idctRowCondDC_int16_8bit(block + i*8, 0);
    }


    for(i=0;i<8;i++) {
        idct4col_add(dest + i, line_size, block + i);
    }
}
