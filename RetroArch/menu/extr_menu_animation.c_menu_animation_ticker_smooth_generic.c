
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned int get_ticker_smooth_generic_scroll_offset (int ,unsigned int,unsigned int) ;
 int ticker_smooth_scan_characters (unsigned int const*,size_t,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int *) ;

__attribute__((used)) static void menu_animation_ticker_smooth_generic(uint64_t idx,
      const unsigned *char_widths, size_t num_chars, unsigned str_width, unsigned field_width,
      unsigned *char_offset, unsigned *num_chars_to_copy, unsigned *x_offset, unsigned *dst_str_width)
{
   unsigned scroll_offset = get_ticker_smooth_generic_scroll_offset(
      idx, str_width, field_width);


   *char_offset = 0;
   *num_chars_to_copy = 0;
   *x_offset = 0;
   if (dst_str_width)
      *dst_str_width = 0;


   if (num_chars < 1)
      return;

   ticker_smooth_scan_characters(
      char_widths, num_chars, field_width, scroll_offset,
      char_offset, num_chars_to_copy, x_offset, dst_str_width, ((void*)0));
}
