
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int ff_add_pixels_clamped_arm (int *,int *,int ) ;
 int ff_simple_idct_arm (int *) ;

__attribute__((used)) static void simple_idct_arm_add(uint8_t *dest, ptrdiff_t line_size,
                                int16_t *block)
{
    ff_simple_idct_arm(block);
    ff_add_pixels_clamped_arm(block, dest, line_size);
}
