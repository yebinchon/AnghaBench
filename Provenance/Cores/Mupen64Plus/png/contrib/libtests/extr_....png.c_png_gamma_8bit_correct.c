
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_int_32 ;
typedef double png_fixed_point ;
typedef int png_byte ;


 int PNG_FP_1 ;
 double floor (int) ;
 int png_exp8bit (double) ;
 int png_log8bit (unsigned int) ;
 scalar_t__ png_muldiv (double*,double,int ,int ) ;
 int pow (int,double) ;

png_byte
png_gamma_8bit_correct(unsigned int value, png_fixed_point gamma_val)
{
   if (value > 0 && value < 255)
   {
         png_int_32 lg2 = png_log8bit(value);
         png_fixed_point res;

         if (png_muldiv(&res, gamma_val, lg2, PNG_FP_1) != 0)
            return png_exp8bit(res);


         value = 0;

   }

   return (png_byte)(value & 0xff);
}
