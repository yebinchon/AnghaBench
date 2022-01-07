
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,void const*,unsigned int) ;
 int network_menu_bits ;
 unsigned char* network_menu_frame ;
 unsigned int network_menu_height ;
 unsigned int network_menu_pitch ;
 unsigned int network_menu_width ;

__attribute__((used)) static void network_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned pitch = width * 2;

   if (rgb32)
      pitch = width * 4;

   if (network_menu_frame)
   {
      free(network_menu_frame);
      network_menu_frame = ((void*)0);
   }

   if (!network_menu_frame || network_menu_width != width || network_menu_height != height || network_menu_pitch != pitch)
      if (pitch && height)
         network_menu_frame = (unsigned char*)malloc(pitch * height);

   if (network_menu_frame && frame && pitch && height)
   {
      memcpy(network_menu_frame, frame, pitch * height);
      network_menu_width = width;
      network_menu_height = height;
      network_menu_pitch = pitch;
      network_menu_bits = rgb32 ? 32 : 16;
   }
}
