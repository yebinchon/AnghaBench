
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int me_mfont_h ;
 int me_mfont_w ;
 int menu_sel_color ;
 int menu_text_color ;
 int text_out16_ (int,int,void*,int ) ;

__attribute__((used)) static void menu_draw_selection(int x, int y, int w)
{
 int i, h;
 unsigned short *dst, *dest;

 text_out16_(x, y, (void *)1, (menu_sel_color < 0) ? menu_text_color : menu_sel_color);

 if (menu_sel_color < 0) return;

 if (y > 0) y--;
 dest = (unsigned short *)g_menuscreen_ptr + x + y * g_menuscreen_w + me_mfont_w * 2 - 2;
 for (h = me_mfont_h + 1; h > 0; h--)
 {
  dst = dest;
  for (i = w - (me_mfont_w * 2 - 2); i > 0; i--)
   *dst++ = menu_sel_color;
  dest += g_menuscreen_w;
 }
}
