
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int idct4col_add (int *,int ,int *) ;
 int idct4row (int *) ;

void ff_simple_idct44_add(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    int i;


    for(i=0; i<4; i++) {
        idct4row(block + i*8);
    }


    for(i=0; i<4; i++){
        idct4col_add(dest + i, line_size, block + i);
    }
}
