
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uarb ;
typedef int png_uint_32 ;


 int uarb_inc (scalar_t__,int,int) ;
 int uarb_set (scalar_t__,int) ;

__attribute__((used)) static int
uarb_add32(uarb num, int in_digits, png_uint_32 add)

{
   if (in_digits > 0)
   {
      in_digits = uarb_inc(num, in_digits, add & 0xffff);
      return uarb_inc(num+1, in_digits-1, add >> 16)+1;
   }

   return uarb_set(num, add);
}
