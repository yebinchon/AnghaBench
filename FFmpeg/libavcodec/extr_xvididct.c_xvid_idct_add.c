
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_add_pixels_clamped_c (int *,int *,int ) ;
 int ff_xvid_idct (int *) ;

__attribute__((used)) static void xvid_idct_add(uint8_t *dest, ptrdiff_t line_size, int16_t *block)
{
    ff_xvid_idct(block);
    ff_add_pixels_clamped_c(block, dest, line_size);
}
