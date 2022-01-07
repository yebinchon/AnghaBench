
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int x; int y; int width; int height; } ;
struct TYPE_4__ {TYPE_1__ vp; } ;
typedef TYPE_2__ psp1_video_t ;






 int PSP_DISPLAY_SETBUF_NEXTFRAME ;
 int SCEGU_SCR_HEIGHT ;
 int sceDisplayGetFrameBuf (void**,int*,int*,int ) ;

__attribute__((used)) static bool psp_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   void* src_buffer;
   int i, j, src_bufferwidth, src_pixelformat, src_x, src_y, src_x_max, src_y_max;
   uint8_t* dst = buffer;
   psp1_video_t *psp = (psp1_video_t*)data;

   (void)data;
   (void)buffer;

   sceDisplayGetFrameBuf(&src_buffer, &src_bufferwidth, &src_pixelformat, PSP_DISPLAY_SETBUF_NEXTFRAME);

   src_x = (psp->vp.x > 0)? psp->vp.x : 0;
   src_y = (psp->vp.y > 0)? psp->vp.y : 0;
   src_x_max = ((psp->vp.x + psp->vp.width) < src_bufferwidth)? (psp->vp.x + psp->vp.width): src_bufferwidth;
   src_y_max = ((psp->vp.y + psp->vp.height) < SCEGU_SCR_HEIGHT)? (psp->vp.y + psp->vp.height): SCEGU_SCR_HEIGHT;

   switch(src_pixelformat)
   {
   case 129:
      for (j = (src_y_max - 1); j >= src_y ; j--)
      {
         uint16_t* src = (uint16_t*)src_buffer + src_bufferwidth * j + src_x;
         for (i = src_x; i < src_x_max; i++)
         {

            *(dst++) = ((*src) >> 11) << 3;
            *(dst++) = (((*src) >> 5) << 2) &0xFF;
            *(dst++) = ((*src) & 0x1F) << 3;
            src++;
         }
      }
      return 1;

   case 130:
      for (j = (src_y_max - 1); j >= src_y ; j--)
      {
         uint16_t* src = (uint16_t*)src_buffer + src_bufferwidth * j + src_x;
         for (i = src_x; i < src_x_max; i++)
         {

            *(dst++) = (((*src) >> 10) << 3) &0xFF;
            *(dst++) = (((*src) >> 5) << 3) &0xFF;
            *(dst++) = ((*src) & 0x1F) << 3;
            src++;
         }
      }
      return 1;

   case 131:
      for (j = (src_y_max - 1); j >= src_y ; j--)
      {
         uint16_t* src = (uint16_t*)src_buffer + src_bufferwidth * j + src_x;
         for (i = src_x; i < src_x_max; i++)
         {

            *(dst++) = ((*src) >> 4) & 0xF0;
            *(dst++) = (*src) & 0xF0;
            *(dst++) = ((*src) << 4) & 0xF0;
            src++;
         }
      }
      return 1;

   case 128:
      for (j = (src_y_max - 1); j >= src_y ; j--)
      {
         uint32_t* src = (uint32_t*)src_buffer + src_bufferwidth * j + src_x;
         for (i = src_x; i < src_x_max; i++)
         {

            *(dst++) = ((*src) >> 16) & 0xFF;
            *(dst++) = ((*src) >> 8 ) & 0xFF;
            *(dst++) = (*src) & 0xFF;
            src++;
         }
      }
      return 1;
   }

   return 0;
}
