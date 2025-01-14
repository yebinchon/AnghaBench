
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpga_menu_bits ;
 unsigned char* fpga_menu_frame ;
 unsigned int fpga_menu_height ;
 unsigned int fpga_menu_pitch ;
 unsigned int fpga_menu_width ;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,void const*,unsigned int) ;

__attribute__((used)) static void fpga_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned pitch = width * 2;

   if (rgb32)
      pitch = width * 4;

   if (fpga_menu_frame)
   {
      free(fpga_menu_frame);
      fpga_menu_frame = ((void*)0);
   }

   if (!fpga_menu_frame || fpga_menu_width != width || fpga_menu_height != height || fpga_menu_pitch != pitch)
      if (pitch && height)
         fpga_menu_frame = (unsigned char*)malloc(pitch * height);

   if (fpga_menu_frame && frame && pitch && height)
   {
      memcpy(fpga_menu_frame, frame, pitch * height);
      fpga_menu_width = width;
      fpga_menu_height = height;
      fpga_menu_pitch = pitch;
      fpga_menu_bits = rgb32 ? 32 : 16;
   }
}
