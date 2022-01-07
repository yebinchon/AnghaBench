
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int me_sfont_h ;
 int memset (unsigned short*,int,int) ;
 int menu_draw_begin (int ,int) ;
 int menu_draw_end () ;

__attribute__((used)) static void load_progress_cb(int percent)
{
 int ln, len = percent * g_menuscreen_w / 100;
 unsigned short *dst;

 if (len > g_menuscreen_w)
  len = g_menuscreen_w;

 menu_draw_begin(0, 1);
 dst = (unsigned short *)g_menuscreen_ptr + g_menuscreen_w * me_sfont_h * 2;
 for (ln = me_sfont_h - 2; ln > 0; ln--, dst += g_menuscreen_w)
  memset(dst, 0xff, len * 2);
 menu_draw_end();
}
