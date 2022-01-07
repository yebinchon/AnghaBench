
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct sunxi_video {TYPE_2__* sunxi_disp; TYPE_1__* pages; scalar_t__ menu_active; } ;
struct TYPE_4__ {int xres; int bits_per_pixel; } ;
struct TYPE_3__ {int offset; scalar_t__ address; } ;


 int memcpy (char*,char*,unsigned int) ;
 int sunxi_layer_set_rgb_input_buffer (TYPE_2__*,int ,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void sunxi_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   if (_dispvars->menu_active)
   {
      unsigned int i, j;



      unsigned int src_pitch = width * 2;
      unsigned int dst_pitch = _dispvars->sunxi_disp->xres * 4;
      unsigned int dst_width = _dispvars->sunxi_disp->xres;
      uint32_t line[dst_width];


      char *dst_base_addr = (char*)(_dispvars->pages[0].address);

      for (i = 0; i < height; i++)
      {
         for (j = 0; j < src_pitch / 2; j++)
         {
            uint16_t src_pix = *((uint16_t*)frame + (src_pitch / 2 * i) + j);

            uint32_t R = (src_pix << 8) & 0x00FF0000;
            uint32_t G = (src_pix << 4) & 0x0000FF00;
            uint32_t B = (src_pix << 0) & 0x000000FF;
            line[j] = (0 | R | G | B);
         }
         memcpy(dst_base_addr + (dst_pitch * i), (char*)line, dst_pitch);
      }


      sunxi_layer_set_rgb_input_buffer(_dispvars->sunxi_disp,
            _dispvars->sunxi_disp->bits_per_pixel,
            _dispvars->pages[0].offset, width, height, _dispvars->sunxi_disp->xres);
   }
}
