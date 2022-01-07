
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int IDCT_ROW (int *,int*) ;
 int ea_idct_col (int*,int*) ;

void ff_ea_idct_put_c(uint8_t *dest, ptrdiff_t linesize, int16_t *block)
{
    int i;
    int16_t temp[64];
    block[0] += 4;
    for (i=0; i<8; i++)
        ea_idct_col(&temp[i], &block[i]);
    for (i=0; i<8; i++)
        IDCT_ROW( (&dest[i*linesize]), (&temp[8*i]) );
}
