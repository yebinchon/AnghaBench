
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_simple_idct_axp (int *) ;
 int put_pixels_clamped_axp_p (int *,int *,int ) ;

void ff_simple_idct_put_axp(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    ff_simple_idct_axp(block);
    put_pixels_clamped_axp_p(block, dest, line_size);
}
