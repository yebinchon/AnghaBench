
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_byte ;


 double floor (double) ;

__attribute__((used)) static png_byte
floorb(double d)
{
   d = floor(d);
   return (png_byte)d;
}
