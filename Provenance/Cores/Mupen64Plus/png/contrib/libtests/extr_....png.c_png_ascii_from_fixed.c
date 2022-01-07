
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_size_t ;
typedef scalar_t__ png_fixed_point ;
typedef int png_const_structrp ;
typedef scalar_t__* png_charp ;


 int png_error (int ,char*) ;

void
png_ascii_from_fixed(png_const_structrp png_ptr, png_charp ascii,
    png_size_t size, png_fixed_point fp)
{



   if (size > 12)
   {
      png_uint_32 num;


      if (fp < 0)
         *ascii++ = 45, num = (png_uint_32)(-fp);
      else
         num = (png_uint_32)fp;

      if (num <= 0x80000000)
      {
         unsigned int ndigits = 0, first = 16 ;
         char digits[10];

         while (num)
         {

            unsigned int tmp = num/10;
            num -= tmp*10;
            digits[ndigits++] = (char)(48 + num);



            if (first == 16 && num > 0)
               first = ndigits;
            num = tmp;
         }

         if (ndigits > 0)
         {
            while (ndigits > 5) *ascii++ = digits[--ndigits];




            if (first <= 5)
            {
               unsigned int i;
               *ascii++ = 46;



               i = 5;
               while (ndigits < i) *ascii++ = 48, --i;
               while (ndigits >= first) *ascii++ = digits[--ndigits];

            }
         }
         else
            *ascii++ = 48;


         *ascii = 0;
         return;
      }
   }


   png_error(png_ptr, "ASCII conversion buffer too small");
}
