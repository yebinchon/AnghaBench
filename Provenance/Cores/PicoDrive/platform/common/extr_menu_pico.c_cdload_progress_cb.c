
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdload_called ;
 scalar_t__ g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int me_sfont_h ;
 int memset (unsigned short*,int,int) ;
 int menu_draw_begin (int ,int) ;
 int menu_draw_end () ;
 int smalltext_out16 (int,int,char const*,int) ;

__attribute__((used)) static void cdload_progress_cb(const char *fname, int percent)
{
 int ln, len = percent * g_menuscreen_w / 100;
 unsigned short *dst;

 menu_draw_begin(0, 1);
 dst = (unsigned short *)g_menuscreen_ptr + g_menuscreen_w * me_sfont_h * 2;
 memset(dst, 0xff, g_menuscreen_w * (me_sfont_h - 2) * 2);

 smalltext_out16(1, 3 * me_sfont_h, "Processing CD image / MP3s", 0xffff);
 smalltext_out16(1, 4 * me_sfont_h, fname, 0xffff);
 dst += g_menuscreen_w * me_sfont_h * 3;

 if (len > g_menuscreen_w)
  len = g_menuscreen_w;

 for (ln = (me_sfont_h - 2); ln > 0; ln--, dst += g_menuscreen_w)
  memset(dst, 0xff, len * 2);
 menu_draw_end();

 cdload_called = 1;
}
