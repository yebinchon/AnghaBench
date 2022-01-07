
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_dirent {int d_type; char* d_name; } ;


 int FIO_S_IFDIR ;
 unsigned short file2color (char*) ;
 int menu_darken_bg (char*,char*,int,int ) ;
 int menu_draw_begin () ;
 int menu_draw_end () ;
 scalar_t__ menu_screen ;
 int rom_loaded ;
 int smalltext_out16_lim (int,int,char*,unsigned short,int) ;
 int text_out16 (int,int,char*) ;

__attribute__((used)) static void draw_dirlist(char *curdir, struct my_dirent **namelist, int n, int sel)
{
 int start, i, pos;

 start = 13 - sel;
 n--;

 menu_draw_begin();

 if (!rom_loaded) {

 }

 menu_darken_bg((char *)menu_screen + 512*129*2, (char *)menu_screen + 512*129*2, 512*10, 0);

 if (start - 2 >= 0)
  smalltext_out16_lim(14, (start - 2)*10, curdir, 0xffff, 53-2);
 for (i = 0; i < n; i++) {
  pos = start + i;
  if (pos < 0) continue;
  if (pos > 26) break;
  if (namelist[i+1]->d_type & FIO_S_IFDIR) {
   smalltext_out16_lim(14, pos*10, "/", 0xd7ff, 1);
   smalltext_out16_lim(14+6, pos*10, namelist[i+1]->d_name, 0xd7ff, 80-3);
  } else {
   unsigned short color = file2color(namelist[i+1]->d_name);
   smalltext_out16_lim(14, pos*10, namelist[i+1]->d_name, color, 80-2);
  }
 }
 text_out16(5, 130, ">");
 menu_draw_end();
}
