
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int put_pixels_axp_asm (int *,int const*,int ,int) ;

__attribute__((used)) static void put_pixels16_axp_asm(uint8_t *block, const uint8_t *pixels,
                                 ptrdiff_t line_size, int h)
{
    put_pixels_axp_asm(block, pixels, line_size, h);
    put_pixels_axp_asm(block + 8, pixels + 8, line_size, h);
}
