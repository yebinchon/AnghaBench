
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_prores_idct_10 (int *,int const*) ;
 int put_pixels_10 (int *,int,int *) ;

__attribute__((used)) static void prores_idct_put_10_c(uint16_t *out, ptrdiff_t linesize, int16_t *block, const int16_t *qmat)
{
    ff_prores_idct_10(block, qmat);
    put_pixels_10(out, linesize >> 1, block);
}
