
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoCartLoadProgressCB ;
 int load_progress_cb ;
 int memset (int ,int ,int) ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int menu_screen ;
 int rom_loaded ;
 int smalltext_out16 (int,int,char*,int) ;
 int smalltext_out16_lim (int,int,char const*,int,int) ;
 int strlen (char const*) ;

void menu_romload_prepare(const char *rom_name)
{
 const char *p = rom_name + strlen(rom_name);
 while (p > rom_name && *p != '/') p--;

 if (!rom_loaded)
  memset(menu_screen, 0, 321*240*2);
 menu_draw_begin(1);

 smalltext_out16(1, 1, "Loading", 0xffff);
 smalltext_out16_lim(1, 10, p, 0xffff, 53);
 menu_draw_end();
 PicoCartLoadProgressCB = load_progress_cb;
}
