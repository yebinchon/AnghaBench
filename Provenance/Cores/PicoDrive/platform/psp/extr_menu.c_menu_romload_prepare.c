
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoCDLoadProgressCB ;
 int PicoCartLoadProgressCB ;
 int cdload_progress_cb ;
 int lcdr_line ;
 int load_progress_cb ;
 int memset32_uncached (int ,int ,int) ;
 int menu_draw_begin () ;
 int psp_screen ;
 int psp_video_switch_to_single () ;
 scalar_t__ rom_loaded ;
 int smalltext_out16 (int,int,char*,int) ;
 int smalltext_out16_lim (int,int,char const*,int,int) ;
 int strlen (char const*) ;

void menu_romload_prepare(const char *rom_name)
{
 const char *p = rom_name + strlen(rom_name);
 while (p > rom_name && *p != '/') p--;

 psp_video_switch_to_single();
 if (rom_loaded) menu_draw_begin();
 else memset32_uncached(psp_screen, 0, 512*272*2/4);

 smalltext_out16(1, 1, "Loading", 0xffff);
 smalltext_out16_lim(1, 10, p, 0xffff, 80);
 PicoCartLoadProgressCB = load_progress_cb;
 PicoCDLoadProgressCB = cdload_progress_cb;
 lcdr_line = 2;
}
