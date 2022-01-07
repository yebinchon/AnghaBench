
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;


 double closestinteger (double) ;

__attribute__((used)) static png_uint_16
u16d(double d)
{
   d = closestinteger(d);
   return (png_uint_16)d;
}
