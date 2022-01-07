
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_const_structp ;


 int COL_FROM_ID (int) ;
 int DEPTH_FROM_ID (int) ;
 int bit_size (int ,int ,int ) ;
 int standard_width (int ,int) ;

__attribute__((used)) static png_uint_32
standard_rowsize(png_const_structp pp, png_uint_32 id)
{
   png_uint_32 width = standard_width(pp, id);


   width *= bit_size(pp, COL_FROM_ID(id), DEPTH_FROM_ID(id));
   return (width + 7) / 8;
}
