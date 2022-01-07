
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 double L2INV ;
 int floor (double) ;
 double log (unsigned int) ;

__attribute__((used)) static png_uint_32 png_log8bit(unsigned x)
{
   if (x > 0)
      return (png_uint_32)floor(.5-log(x/255.)*L2INV);

   return 0xffffffff;
}
