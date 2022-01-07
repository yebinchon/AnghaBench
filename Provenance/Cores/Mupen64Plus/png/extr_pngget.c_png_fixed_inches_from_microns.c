
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_int_32 ;
typedef int png_fixed_point ;
typedef int png_const_structrp ;


 int png_muldiv_warn (int ,int ,int,int) ;

__attribute__((used)) static png_fixed_point
png_fixed_inches_from_microns(png_const_structrp png_ptr, png_int_32 microns)
{





   return png_muldiv_warn(png_ptr, microns, 500, 127);
}
