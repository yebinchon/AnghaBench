
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 int ticker_smooth_scan_string_fw (size_t,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void menu_animation_ticker_smooth_loop_fw(uint64_t idx,
      unsigned str_width, size_t num_chars,
      unsigned spacer_width, size_t num_spacer_chars,
      unsigned glyph_width, unsigned field_width,
      unsigned *char_offset1, unsigned *num_chars_to_copy1,
      unsigned *char_offset2, unsigned *num_chars_to_copy2,
      unsigned *char_offset3, unsigned *num_chars_to_copy3,
      unsigned *x_offset)
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


   if ((num_chars < 1) || (num_spacer_chars < 1))
      return;
   if (phase < str_width)
   {
      unsigned scroll_offset = phase;

      ticker_smooth_scan_string_fw(
            num_chars, glyph_width, remaining_width, scroll_offset,
            char_offset1, num_chars_to_copy1, x_offset);
      remaining_width -= (*x_offset + (*num_chars_to_copy1 * glyph_width));
   }


   if (remaining_width > glyph_width)
   {
      unsigned scroll_offset = 0;
      unsigned x_offset2 = 0;


      if (phase > str_width)
         scroll_offset = phase - str_width;
      else
         scroll_offset = 0;

      ticker_smooth_scan_string_fw(
            num_spacer_chars, glyph_width, remaining_width, scroll_offset,
            char_offset2, num_chars_to_copy2, &x_offset2);


      remaining_width -= (x_offset2 + (*num_chars_to_copy2 * glyph_width));




      if (scroll_offset > 0)
         *x_offset = x_offset2;
   }


   if (remaining_width > glyph_width)
   {


      *char_offset3 = 0;


      *num_chars_to_copy3 = remaining_width / glyph_width;
      *num_chars_to_copy3 = (*num_chars_to_copy3 > num_chars) ? num_chars : *num_chars_to_copy3;
   }
}
