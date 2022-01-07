
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_set_mode_13h () ;
 int vga_upload_palette () ;

__attribute__((used)) static void vga_gfx_create(void)
{
   vga_set_mode_13h();
   vga_upload_palette();
}
