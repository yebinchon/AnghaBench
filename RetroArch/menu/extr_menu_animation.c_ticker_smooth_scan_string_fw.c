
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ticker_smooth_scan_string_fw(
      size_t num_chars, unsigned glyph_width, unsigned field_width, unsigned scroll_offset,
      unsigned *char_offset, unsigned *num_chars_to_copy, unsigned *x_offset)
{
   unsigned chars_remaining = 0;


   *char_offset = 0;
   *num_chars_to_copy = 0;
   *x_offset = 0;


   if (scroll_offset > 0)
   {
      *char_offset = (scroll_offset / glyph_width) + 1;
      *x_offset = glyph_width - (scroll_offset % glyph_width);
   }



   chars_remaining = (*char_offset >= num_chars) ? 0 : num_chars - *char_offset;


   if ((chars_remaining > 0) && (field_width > *x_offset))
   {
      *num_chars_to_copy = (field_width - *x_offset) / glyph_width;
      *num_chars_to_copy = (*num_chars_to_copy > chars_remaining) ? chars_remaining : *num_chars_to_copy;
   }
}
