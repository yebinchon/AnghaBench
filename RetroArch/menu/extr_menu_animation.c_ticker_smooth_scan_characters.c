
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ticker_smooth_scan_characters(
      const unsigned *char_widths, size_t num_chars, unsigned field_width, unsigned scroll_offset,
      unsigned *char_offset, unsigned *num_chars_to_copy, unsigned *x_offset,
      unsigned *str_width, unsigned *display_width)
{
   unsigned text_width = 0;
   unsigned scroll_pos = scroll_offset;
   bool deferred_str_width = 1;
   unsigned i;


   *char_offset = 0;
   *num_chars_to_copy = 0;
   *x_offset = 0;
   if (str_width)
      *str_width = 0;
   if (display_width)
      *display_width = 0;


   if (scroll_pos > 0)
   {
      for (i = 0; i < num_chars; i++)
      {
         if (scroll_pos > char_widths[i])
            scroll_pos -= char_widths[i];
         else
         {



            *char_offset = i + 1;
            *x_offset = char_widths[i] - scroll_pos;
            break;
         }
      }
   }


   for (i = *char_offset; i < num_chars; i++)
   {
      text_width += char_widths[i];

      if (*x_offset + text_width <= field_width)
         (*num_chars_to_copy)++;
      else
      {





         if (str_width)
         {
            deferred_str_width = 0;
            *str_width = text_width - char_widths[i];
         }
         break;
      }
   }


   if (str_width)
      if (deferred_str_width)
         *str_width = text_width;



   if (display_width)
   {
      *display_width = *x_offset + text_width;
      *display_width = (*display_width > field_width) ? field_width : *display_width;
   }
}
