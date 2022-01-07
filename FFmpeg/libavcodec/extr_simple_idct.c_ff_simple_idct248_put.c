
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int BF (int) ;
 int idct4col_put (int *,int,int *) ;
 int idctRowCondDC_int16_8bit (int *,int ) ;

void ff_simple_idct248_put(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;
    int16_t *ptr;


    ptr = block;
    for(i=0;i<4;i++) {
        BF(0);
        BF(1);
        BF(2);
        BF(3);
        BF(4);
        BF(5);
        BF(6);
        BF(7);
        ptr += 2 * 8;
    }


    for(i=0; i<8; i++) {
        idctRowCondDC_int16_8bit(block + i*8, 0);
    }


    for(i=0;i<8;i++) {
        idct4col_put(dest + i, 2 * line_size, block + i);
        idct4col_put(dest + line_size + i, 2 * line_size, block + 8 + i);
    }
}
