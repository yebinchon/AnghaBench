
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_display_ctx_clearcolor_t ;


 int menu_display_fpga_restore_clear_color () ;

__attribute__((used)) static void menu_display_fpga_clear_color(menu_display_ctx_clearcolor_t *clearcolor)
{
   (void)clearcolor;

   menu_display_fpga_restore_clear_color();
}
