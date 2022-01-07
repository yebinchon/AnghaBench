
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int is_threaded; scalar_t__ font_enable; scalar_t__ rgb32; int height; } ;
typedef TYPE_1__ video_info_t ;
typedef void vga_t ;
typedef int input_driver_t ;


 int FONT_DRIVER_RENDER_VGA ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;
 scalar_t__ calloc (int,int) ;
 int font_driver_init_osd (int *,int,int ,int ) ;
 scalar_t__ malloc (int) ;
 unsigned char* vga_frame ;
 int vga_gfx_create () ;
 scalar_t__ vga_rgb32 ;
 int vga_video_bits ;
 int vga_video_height ;
 int vga_video_pitch ;
 int vga_video_width ;

__attribute__((used)) static void *vga_gfx_init(const video_info_t *video,
      input_driver_t **input, void **input_data)
{
   vga_t *vga = (vga_t*)calloc(1, sizeof(*vga));

   *input = ((void*)0);
   *input_data = ((void*)0);

   vga_video_width = video->width;
   vga_video_height = video->height;
   vga_rgb32 = video->rgb32;

   if (video->rgb32)
   {
      vga_video_pitch = video->width * 4;
      vga_video_bits = 32;
   }
   else
   {
      vga_video_pitch = video->width * 2;
      vga_video_bits = 16;
   }

   vga_frame = (unsigned char*)malloc(VGA_WIDTH * VGA_HEIGHT);

   vga_gfx_create();

   if (video->font_enable)
      font_driver_init_osd(((void*)0), 0,
            video->is_threaded, FONT_DRIVER_RENDER_VGA);

   return vga;
}
