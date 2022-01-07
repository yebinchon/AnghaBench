
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;
typedef int png_int_32 ;
typedef double png_fixed_point ;


 int PNG_FP_1 ;
 double floor (int) ;
 int png_exp16bit (double) ;
 int png_log16bit (unsigned int) ;
 scalar_t__ png_muldiv (double*,double,int,int ) ;
 int pow (int,double) ;

png_uint_16
png_gamma_16bit_correct(unsigned int value, png_fixed_point gamma_val)
{
   if (value > 0 && value < 65535)
   {
      png_int_32 lg2 = png_log16bit(value);
      png_fixed_point res;

      if (png_muldiv(&res, gamma_val, lg2, PNG_FP_1) != 0)
         return png_exp16bit(res);


      value = 0;

   }

   return (png_uint_16)value;
}
