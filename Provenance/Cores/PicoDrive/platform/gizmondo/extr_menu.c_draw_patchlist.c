
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; char* name; } ;


 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;
 int menu_draw_begin (int) ;
 int menu_draw_end () ;
 int smalltext_out16_lim (int,int,char*,int,int) ;
 int text_out16 (int,int,char*) ;

__attribute__((used)) static void draw_patchlist(int sel)
{
 int start, i, pos, active;

 start = 12 - sel;

 menu_draw_begin(1);

 for (i = 0; i < PicoPatchCount; i++) {
  pos = start + i;
  if (pos < 0) continue;
  if (pos > 23) break;
  active = PicoPatches[i].active;
  smalltext_out16_lim(14, pos*10, active ? "ON " : "OFF", active ? 0xfff6 : 0xffff, 3);
  smalltext_out16_lim(14+6*4, pos*10, PicoPatches[i].name, active ? 0xfff6 : 0xffff, 53-6);
 }
 pos = start + i;
 if (pos < 24) smalltext_out16_lim(14, pos*10, "done", 0xffff, 4);

 text_out16(5, 120, ">");
 menu_draw_end();
}
