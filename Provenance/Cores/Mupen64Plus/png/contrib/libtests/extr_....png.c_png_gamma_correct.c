
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_16 ;
typedef TYPE_1__* png_structrp ;
typedef int png_fixed_point ;
struct TYPE_3__ {int bit_depth; } ;


 int png_gamma_16bit_correct (unsigned int,int ) ;
 int png_gamma_8bit_correct (unsigned int,int ) ;

png_uint_16
png_gamma_correct(png_structrp png_ptr, unsigned int value,
    png_fixed_point gamma_val)
{
   if (png_ptr->bit_depth == 8)
      return png_gamma_8bit_correct(value, gamma_val);






      return 0;

}
