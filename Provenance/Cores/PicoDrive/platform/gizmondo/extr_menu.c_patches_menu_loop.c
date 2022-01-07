
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;


 unsigned long PBTN_DOWN ;
 unsigned long PBTN_L ;
 unsigned long PBTN_LEFT ;
 unsigned long PBTN_PLAY ;
 unsigned long PBTN_R ;
 unsigned long PBTN_RIGHT ;
 unsigned long PBTN_STOP ;
 unsigned long PBTN_UP ;
 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;
 int draw_patchlist (int) ;
 unsigned long in_menu_wait (unsigned long) ;

__attribute__((used)) static void patches_menu_loop(void)
{
 int menu_sel = 0;
 unsigned long inp = 0;

 for(;;)
 {
  draw_patchlist(menu_sel);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_L|PBTN_R|PBTN_PLAY|PBTN_STOP);
  if(inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = PicoPatchCount; }
  if(inp & PBTN_DOWN) { menu_sel++; if (menu_sel > PicoPatchCount) menu_sel = 0; }
  if(inp &(PBTN_LEFT|PBTN_L)) { menu_sel-=10; if (menu_sel < 0) menu_sel = 0; }
  if(inp &(PBTN_RIGHT|PBTN_R)) { menu_sel+=10; if (menu_sel > PicoPatchCount) menu_sel = PicoPatchCount; }
  if(inp & PBTN_PLAY) {
   if (menu_sel < PicoPatchCount)
    PicoPatches[menu_sel].active = !PicoPatches[menu_sel].active;
   else return;
  }
  if(inp & PBTN_STOP) return;
 }

}
