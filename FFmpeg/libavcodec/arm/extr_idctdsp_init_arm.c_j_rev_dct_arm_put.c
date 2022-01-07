
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_j_rev_dct_arm (int *) ;
 int ff_put_pixels_clamped_c (int *,int *,int ) ;

__attribute__((used)) static void j_rev_dct_arm_put(uint8_t *dest, ptrdiff_t line_size,
                              int16_t *block)
{
    ff_j_rev_dct_arm(block);
    ff_put_pixels_clamped_c(block, dest, line_size);
}
