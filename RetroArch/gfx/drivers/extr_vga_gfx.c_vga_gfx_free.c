
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * vga_frame ;
 int * vga_menu_frame ;
 int vga_return_to_text_mode () ;

__attribute__((used)) static void vga_gfx_free(void *data)
{
   (void)data;

   if (vga_frame)
   {
      free(vga_frame);
      vga_frame = ((void*)0);
   }

   if (vga_menu_frame)
   {
      free(vga_menu_frame);
      vga_menu_frame = ((void*)0);
   }

   vga_return_to_text_mode();
}
