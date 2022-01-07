
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_dirent {scalar_t__ d_type; char* d_name; } ;


 scalar_t__ DT_DIR ;
 unsigned short file2color (char*) ;
 int menu_darken_bg (char*,char*,int,int ) ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 char* menu_screen ;
 int rom_loaded ;
 int smalltext_out16_lim (int,int,char*,unsigned short,int) ;
 int text_out16 (int,int,char*) ;

__attribute__((used)) static void draw_dirlist(char *curdir, struct my_dirent **namelist, int n, int sel)
{
 int start, i, pos;

 start = 12 - sel;
 n--;

 menu_draw_begin(1);

 if (!rom_loaded) {
  menu_darken_bg(menu_screen, menu_screen, 321*240, 0);
 }

 menu_darken_bg((char *)menu_screen + 321*120*2, (char *)menu_screen + 321*120*2, 321*8, 0);

 if(start - 2 >= 0)
  smalltext_out16_lim(14, (start - 2)*10, curdir, 0xffff, 53-2);
 for (i = 0; i < n; i++) {
  pos = start + i;
  if (pos < 0) continue;
  if (pos > 23) break;
  if (namelist[i+1]->d_type == DT_DIR) {
   smalltext_out16_lim(14, pos*10, "/", 0xfff6, 1);
   smalltext_out16_lim(14+6, pos*10, namelist[i+1]->d_name, 0xfff6, 53-3);
  } else {
   unsigned short color = file2color(namelist[i+1]->d_name);
   smalltext_out16_lim(14, pos*10, namelist[i+1]->d_name, color, 53-2);
  }
 }
 text_out16(5, 120, ">");
 menu_draw_end();
}
