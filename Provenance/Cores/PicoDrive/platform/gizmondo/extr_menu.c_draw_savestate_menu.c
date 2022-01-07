
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw_savestate_bg (int) ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int menu_draw_selection (int,int,int) ;
 int state_slot_flags ;
 int text_out16 (int,int,char*,...) ;

__attribute__((used)) static void draw_savestate_menu(int menu_sel, int is_loading)
{
 int tl_x = 25, tl_y = 60, y, i;

 if (state_slot_flags & (1 << menu_sel))
  draw_savestate_bg(menu_sel);
 menu_draw_begin(1);

 text_out16(tl_x, 30, is_loading ? "Load state" : "Save state");

 menu_draw_selection(tl_x - 16, tl_y + menu_sel*10, 108);


 y = tl_y;
 for (i = 0; i < 10; i++, y+=10)
 {
  text_out16(tl_x, y, "SLOT %i (%s)", i, (state_slot_flags & (1 << i)) ? "USED" : "free");
 }
 text_out16(tl_x, y, "back");

 menu_draw_end();
}
