
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int MAX_FB_WIDTH ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;

__attribute__((used)) static void rgui_fill_rect(
      uint16_t *data,
      unsigned fb_width, unsigned fb_height,
      unsigned x, unsigned y,
      unsigned width, unsigned height,
      uint16_t dark_color, uint16_t light_color,
      bool thickness)
{
   unsigned x_index, y_index;
   unsigned x_start = x <= fb_width ? x : fb_width;
   unsigned y_start = y <= fb_height ? y : fb_height;
   unsigned x_end = x + width;
   unsigned y_end = y + height;
   size_t x_size;
   uint16_t scanline_even[MAX_FB_WIDTH];
   uint16_t scanline_odd[MAX_FB_WIDTH];






   x_end = x_end <= fb_width ? x_end : fb_width;
   y_end = y_end <= fb_height ? y_end : fb_height;
   x_size = (x_end - x_start) * sizeof(uint16_t);


   if (x_size == 0)
      return;



   if (dark_color == light_color)
   {
      uint16_t *src = scanline_even + x_start;
      uint16_t *dst = data + x_start;


      for (x_index = x_start; x_index < x_end; x_index++)
         *(scanline_even + x_index) = dark_color;


      for (y_index = y_start; y_index < y_end; y_index++)
         memcpy(dst + (y_index * fb_width), src, x_size);
   }
   else if (thickness)
   {
      uint16_t *src_a = ((void*)0);
      uint16_t *src_b = ((void*)0);
      uint16_t *src_c = ((void*)0);
      uint16_t *src_d = ((void*)0);
      uint16_t *dst = data + x_start;



      switch (y_start & 0x3)
      {
         case 0x1:
            src_a = scanline_even + x_start;
            src_b = scanline_odd + x_start;
            src_c = src_b;
            src_d = src_a;
            break;
         case 0x2:
            src_a = scanline_odd + x_start;
            src_b = src_a;
            src_c = scanline_even + x_start;
            src_d = src_c;
            break;
         case 0x3:
            src_a = scanline_odd + x_start;
            src_b = scanline_even + x_start;
            src_c = src_b;
            src_d = src_a;
            break;
         case 0x0:
         default:
            src_a = scanline_even + x_start;
            src_b = src_a;
            src_c = scanline_odd + x_start;
            src_d = src_c;
            break;
      }


      for (x_index = x_start; x_index < x_end; x_index++)
      {
         bool x_is_even = (((x_index >> 1) & 1) == 0);
         *(scanline_even + x_index) = x_is_even ? dark_color : light_color;
         *(scanline_odd + x_index) = x_is_even ? light_color : dark_color;
      }


      for (y_index = y_start ; y_index < y_end; y_index += 4)
         memcpy(dst + (y_index * fb_width), src_a, x_size);

      for (y_index = y_start + 1; y_index < y_end; y_index += 4)
         memcpy(dst + (y_index * fb_width), src_b, x_size);

      for (y_index = y_start + 2; y_index < y_end; y_index += 4)
         memcpy(dst + (y_index * fb_width), src_c, x_size);

      for (y_index = y_start + 3; y_index < y_end; y_index += 4)
         memcpy(dst + (y_index * fb_width), src_d, x_size);
   }
   else
   {
      uint16_t *src_a = ((void*)0);
      uint16_t *src_b = ((void*)0);
      uint16_t *dst = data + x_start;



      if ((y_start & 1) == 0)
      {
         src_a = scanline_even + x_start;
         src_b = scanline_odd + x_start;
      }
      else
      {
         src_a = scanline_odd + x_start;
         src_b = scanline_even + x_start;
      }


      for (x_index = x_start; x_index < x_end; x_index++)
      {
         bool x_is_even = ((x_index & 1) == 0);
         *(scanline_even + x_index) = x_is_even ? dark_color : light_color;
         *(scanline_odd + x_index) = x_is_even ? light_color : dark_color;
      }


      for (y_index = y_start ; y_index < y_end; y_index += 2)
         memcpy(dst + (y_index * fb_width), src_a, x_size);

      for (y_index = y_start + 1; y_index < y_end; y_index += 2)
         memcpy(dst + (y_index * fb_width), src_b, x_size);
   }
}
