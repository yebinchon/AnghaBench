
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int put_pixel (int *,int ,int const*,int) ;

__attribute__((used)) static void put_pixels_12(uint16_t *dst, ptrdiff_t linesize, const int16_t *in)
{
    put_pixel(dst, linesize, in, 12);
}
