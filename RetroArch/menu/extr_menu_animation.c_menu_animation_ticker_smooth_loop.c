
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 int ticker_smooth_scan_characters (unsigned int const*,size_t,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void menu_animation_ticker_smooth_loop(uint64_t idx,
      const unsigned *char_widths, size_t num_chars,
      const unsigned *spacer_widths, size_t num_spacer_chars,
      unsigned str_width, unsigned spacer_width, unsigned field_width,
      unsigned *char_offset1, unsigned *num_chars_to_copy1,
      unsigned *char_offset2, unsigned *num_chars_to_copy2,
      unsigned *char_offset3, unsigned *num_chars_to_copy3,
      unsigned *x_offset, unsigned *dst_str_width)

{
   unsigned ticker_period = str_width + spacer_width;
   unsigned phase = idx % ticker_period;

   unsigned remaining_width = field_width;


   *char_offset1 = 0;
   *num_chars_to_copy1 = 0;
   *char_offset2 = 0;
   *num_chars_to_copy2 = 0;
   *char_offset3 = 0;
   *num_chars_to_copy3 = 0;
   *x_offset = 0;
   if (dst_str_width)
      *dst_str_width = 0;


   if ((num_chars < 1) || (num_spacer_chars < 1))
      return;
   if (phase < str_width)
   {
      unsigned scroll_offset = phase;
      unsigned display_width = 0;
      unsigned str1_width = 0;

      ticker_smooth_scan_characters(
            char_widths, num_chars, remaining_width, scroll_offset,
            char_offset1, num_chars_to_copy1, x_offset, &str1_width, &display_width);


      remaining_width -= display_width;


      if (dst_str_width)
         *dst_str_width += str1_width;
   }


   if (remaining_width > 0)
   {
      unsigned scroll_offset = 0;
      unsigned display_width = 0;
      unsigned str2_width = 0;
      unsigned x_offset2 = 0;


      if (phase > str_width)
         scroll_offset = phase - str_width;
      else
         scroll_offset = 0;

      ticker_smooth_scan_characters(
            spacer_widths, num_spacer_chars, remaining_width, scroll_offset,
            char_offset2, num_chars_to_copy2, &x_offset2, &str2_width, &display_width);


      remaining_width -= display_width;


      if (dst_str_width)
         *dst_str_width += str2_width;




      if (scroll_offset > 0)
         *x_offset = x_offset2;
   }


   if (remaining_width > 0)
   {


      unsigned i;
      unsigned text_width = 0;
      *char_offset3 = 0;


      for (i = 0; i < num_chars; i++)
      {
         text_width += char_widths[i];

         if (text_width <= remaining_width)
            (*num_chars_to_copy3)++;
         else
         {

            if (dst_str_width)
               *dst_str_width += text_width - char_widths[i];
            break;
         }
      }
   }
}
