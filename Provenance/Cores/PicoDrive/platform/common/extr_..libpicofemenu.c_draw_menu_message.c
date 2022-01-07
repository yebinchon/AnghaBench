
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int me_mfont_h ;
 int me_mfont_w ;
 int menu_draw_begin (int,int ) ;
 int menu_draw_end () ;
 int menu_separation () ;
 int text_out16 (int,int,char const*) ;

__attribute__((used)) static void draw_menu_message(const char *msg, void (*draw_more)(void))
{
 int x, y, h, w, wt;
 const char *p;

 p = msg;
 for (h = 1, w = 0; *p != 0; h++) {
  for (wt = 0; *p != 0 && *p != '\n'; p++)
   wt++;

  if (wt > w)
   w = wt;
  if (*p == 0)
   break;
  p++;
 }

 x = g_menuscreen_w / 2 - w * me_mfont_w / 2;
 y = g_menuscreen_h / 2 - h * me_mfont_h / 2;
 if (x < 0) x = 0;
 if (y < 0) y = 0;

 menu_draw_begin(1, 0);

 for (p = msg; *p != 0 && y <= g_menuscreen_h - me_mfont_h; y += me_mfont_h) {
  text_out16(x, y, p);

  for (; *p != 0 && *p != '\n'; p++)
   ;
  if (*p != 0)
   p++;
 }

 menu_separation();

 if (draw_more != ((void*)0))
  draw_more();

 menu_draw_end();
}
