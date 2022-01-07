
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int shadow_color_buf ;
typedef enum rgui_symbol_type { ____Placeholder_rgui_symbol_type } rgui_symbol_type ;
typedef int color_buf ;
struct TYPE_2__ {int * data; } ;


 unsigned int FONT_HEIGHT ;
 unsigned int FONT_WIDTH ;
 int memcpy (int *,int *,int) ;
 TYPE_1__ rgui_frame_buf ;
 int * rgui_get_symbol_data (int) ;

__attribute__((used)) static void blit_symbol_shadow(unsigned fb_width, int x, int y,
      enum rgui_symbol_type symbol, uint16_t color, uint16_t shadow_color)
{
   unsigned i, j;
   uint16_t *frame_buf_data = rgui_frame_buf.data;
   const uint8_t *symbol_data = rgui_get_symbol_data(symbol);
   uint16_t color_buf[2];
   uint16_t shadow_color_buf[2];

   color_buf[0] = color;
   color_buf[1] = shadow_color;

   shadow_color_buf[0] = shadow_color;
   shadow_color_buf[1] = shadow_color;

   if (!symbol_data)
      return;

   for (j = 0; j < FONT_HEIGHT; j++)
   {
      unsigned buff_offset = ((y + j) * fb_width) + x;

      for (i = 0; i < FONT_WIDTH; i++)
      {
         if (*symbol_data++ == 1)
         {
            uint16_t *frame_buf_ptr = frame_buf_data + buff_offset + i;


            memcpy(frame_buf_ptr, color_buf, sizeof(color_buf));


            frame_buf_ptr += fb_width;
            memcpy(frame_buf_ptr, shadow_color_buf, sizeof(shadow_color_buf));
         }
      }
   }
}
