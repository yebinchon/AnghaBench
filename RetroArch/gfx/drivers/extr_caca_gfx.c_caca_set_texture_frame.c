
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* caca_menu_frame ;
 unsigned int caca_menu_height ;
 unsigned int caca_menu_pitch ;
 unsigned int caca_menu_width ;
 int free (unsigned char*) ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,void const*,unsigned int) ;

__attribute__((used)) static void caca_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned pitch = width * 2;

   if (rgb32)
      pitch = width * 4;

   if (caca_menu_frame)
   {
      free(caca_menu_frame);
      caca_menu_frame = ((void*)0);
   }

   if ( !caca_menu_frame ||
         caca_menu_width != width ||
         caca_menu_height != height ||
         caca_menu_pitch != pitch)
      if (pitch && height)
         caca_menu_frame = (unsigned char*)malloc(pitch * height);

   if (caca_menu_frame && frame && pitch && height)
      memcpy(caca_menu_frame, frame, pitch * height);
}
