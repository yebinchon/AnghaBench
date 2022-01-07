
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void rgui_color_rect(
      uint16_t *data,
      unsigned fb_width, unsigned fb_height,
      unsigned x, unsigned y,
      unsigned width, unsigned height,
      uint16_t color)
{
   unsigned x_index, y_index;
   unsigned x_start = x <= fb_width ? x : fb_width;
   unsigned y_start = y <= fb_height ? y : fb_height;
   unsigned x_end = x + width;
   unsigned y_end = y + height;

   x_end = x_end <= fb_width ? x_end : fb_width;
   y_end = y_end <= fb_height ? y_end : fb_height;

   for (y_index = y_start; y_index < y_end; y_index++)
   {
      uint16_t *data_ptr = data + (y_index * fb_width);
      for (x_index = x_start; x_index < x_end; x_index++)
         *(data_ptr + x_index) = color;
   }
}
