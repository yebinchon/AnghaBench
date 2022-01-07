
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* png_const_charp ;
typedef char* png_charp ;
typedef scalar_t__ png_alloc_size_t ;
png_charp
png_format_number(png_const_charp start, png_charp end, int format,
    png_alloc_size_t number)
{
   int count = 0;
   int mincount = 1;
   int output = 0;

   *--end = '\0';




   while (end > start && (number != 0 || count < mincount))
   {

      static const char digits[] = "0123456789ABCDEF";

      switch (format)
      {
         case 130:

            mincount = 5;
            if (output != 0 || number % 10 != 0)
            {
               *--end = digits[number % 10];
               output = 1;
            }
            number /= 10;
            break;

         case 132:

            mincount = 2;


         case 129:
            *--end = digits[number % 10];
            number /= 10;
            break;

         case 131:

            mincount = 2;


         case 128:
            *--end = digits[number & 0xf];
            number >>= 4;
            break;

         default:
            number = 0;
            break;
      }


      ++count;


      if ((format == 130) && (count == 5) && (end > start))
      {




         if (output != 0)
            *--end = '.';
         else if (number == 0)
            *--end = '0';
      }
   }

   return end;
}
