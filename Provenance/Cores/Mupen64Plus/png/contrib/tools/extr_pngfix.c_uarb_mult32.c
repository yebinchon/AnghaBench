
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uarb ;
typedef int png_uint_32 ;
typedef int png_uint_16 ;


 int assert (int) ;
 int uarb_mult_digit (scalar_t__,int,scalar_t__,int,int ) ;

__attribute__((used)) static int
uarb_mult32(uarb acc, int a_digits, uarb num, int n_digits, png_uint_32 val)



{
   if (n_digits > 0 && val > 0)
   {
      a_digits = uarb_mult_digit(acc, a_digits, num, n_digits,
         (png_uint_16)(val & 0xffff));

      val >>= 16;
      if (val > 0)
         a_digits = uarb_mult_digit(acc+1, a_digits-1, num, n_digits,
            (png_uint_16)val) + 1;


      assert(a_digits > 0);
   }

   return a_digits;
}
