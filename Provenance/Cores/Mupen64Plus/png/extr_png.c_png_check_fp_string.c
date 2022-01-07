
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t png_size_t ;
typedef scalar_t__* png_const_charp ;


 scalar_t__ png_check_fp_number (scalar_t__*,size_t,int*,size_t*) ;

int
png_check_fp_string(png_const_charp string, png_size_t size)
{
   int state=0;
   png_size_t char_index=0;

   if (png_check_fp_number(string, size, &state, &char_index) != 0 &&
      (char_index == size || string[char_index] == 0))
      return state ;

   return 0;
}
