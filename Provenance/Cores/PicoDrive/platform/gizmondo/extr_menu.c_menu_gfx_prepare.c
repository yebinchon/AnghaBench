
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int menu_prepare_bg (int ) ;
 int rom_loaded ;

__attribute__((used)) static void menu_gfx_prepare(void)
{
 menu_prepare_bg(rom_loaded);

 menu_draw_begin(1);
 menu_draw_end();
}
