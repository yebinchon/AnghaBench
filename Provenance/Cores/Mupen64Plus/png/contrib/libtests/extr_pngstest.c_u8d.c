
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_byte ;


 double closestinteger (double) ;

__attribute__((used)) static png_byte
u8d(double d)
{
   d = closestinteger(d);
   return (png_byte)d;
}
