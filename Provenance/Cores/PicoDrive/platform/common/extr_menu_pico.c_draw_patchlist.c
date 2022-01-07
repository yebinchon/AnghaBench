
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; char* name; } ;


 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;
 int g_menuscreen_h ;
 int me_sfont_h ;
 int me_sfont_w ;
 int menu_draw_begin (int,int ) ;
 int menu_draw_end () ;
 int smalltext_out16 (int,int,char*,int) ;
 int text_out16 (int,int,char*) ;

__attribute__((used)) static void draw_patchlist(int sel)
{
 int max_cnt, start, i, pos, active;

 max_cnt = g_menuscreen_h / me_sfont_h;
 start = max_cnt / 2 - sel;

 menu_draw_begin(1, 0);

 for (i = 0; i < PicoPatchCount; i++) {
  pos = start + i;
  if (pos < 0) continue;
  if (pos >= max_cnt) break;
  active = PicoPatches[i].active;
  smalltext_out16(14, pos * me_sfont_h, active ? "ON " : "OFF", active ? 0xfff6 : 0xffff);
  smalltext_out16(14 + me_sfont_w*4, pos * me_sfont_h, PicoPatches[i].name, active ? 0xfff6 : 0xffff);
 }
 pos = start + i;
 if (pos < max_cnt)
  smalltext_out16(14, pos * me_sfont_h, "done", 0xffff);

 text_out16(5, max_cnt / 2 * me_sfont_h, ">");
 menu_draw_end();
}
