
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoCDLoadProgressCB ;
 int PicoCartLoadProgressCB ;
 scalar_t__ cdload_called ;
 int cdload_progress_cb ;
 int load_progress_cb ;
 int me_sfont_h ;
 int menu_draw_begin (int,int) ;
 int menu_draw_end () ;
 int smalltext_out16 (int,int,char const*,int) ;
 int strlen (char const*) ;

void menu_romload_prepare(const char *rom_name)
{
 const char *p = rom_name + strlen(rom_name);
 int i;

 while (p > rom_name && *p != '/')
  p--;


 for (i = 0; i < 3; i++) {
  menu_draw_begin(1, 1);
  smalltext_out16(1, 1, "Loading", 0xffff);
  smalltext_out16(1, me_sfont_h, p, 0xffff);
  menu_draw_end();
 }

 PicoCartLoadProgressCB = load_progress_cb;
 PicoCDLoadProgressCB = cdload_progress_cb;
 cdload_called = 0;
}
