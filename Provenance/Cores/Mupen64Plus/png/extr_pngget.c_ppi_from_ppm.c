
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_int_32 ;
typedef int png_fixed_point ;


 int PNG_UINT_31_MAX ;
 scalar_t__ png_muldiv (int *,int ,int,int) ;

__attribute__((used)) static png_uint_32
ppi_from_ppm(png_uint_32 ppm)
{
   png_fixed_point result;
   if (ppm <= PNG_UINT_31_MAX && png_muldiv(&result, (png_int_32)ppm, 127,
       5000) != 0)
      return (png_uint_32)result;


   return 0;

}
