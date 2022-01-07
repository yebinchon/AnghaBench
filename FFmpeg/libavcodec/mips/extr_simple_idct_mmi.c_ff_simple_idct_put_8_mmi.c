
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_put_pixels_clamped_mmi (int *,int *,int ) ;
 int ff_simple_idct_8_mmi (int *) ;

void ff_simple_idct_put_8_mmi(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    ff_simple_idct_8_mmi(block);
    ff_put_pixels_clamped_mmi(block, dest, line_size);
}
