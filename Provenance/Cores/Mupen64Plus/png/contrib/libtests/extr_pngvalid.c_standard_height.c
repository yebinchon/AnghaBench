
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_const_structp ;


 int COL_FROM_ID (scalar_t__) ;
 int DEPTH_FROM_ID (scalar_t__) ;
 scalar_t__ HEIGHT_FROM_ID (scalar_t__) ;
 scalar_t__ transform_height (int ,int ,int ) ;

__attribute__((used)) static png_uint_32
standard_height(png_const_structp pp, png_uint_32 id)
{
   png_uint_32 height = HEIGHT_FROM_ID(id);

   if (height == 0)
      height = transform_height(pp, COL_FROM_ID(id), DEPTH_FROM_ID(id));

   return height;
}
