
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;


 int PBTN_DOWN ;
 int PBTN_L ;
 int PBTN_LEFT ;
 int PBTN_MBACK ;
 int PBTN_MOK ;
 int PBTN_R ;
 int PBTN_RIGHT ;
 int PBTN_UP ;
 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;
 int draw_patchlist (int) ;
 int in_menu_wait (int,int *,int) ;

__attribute__((used)) static void menu_loop_patches(void)
{
 static int menu_sel = 0;
 int inp;

 for (;;)
 {
  draw_patchlist(menu_sel);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_L|PBTN_R
    |PBTN_MOK|PBTN_MBACK, ((void*)0), 33);
  if (inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = PicoPatchCount; }
  if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > PicoPatchCount) menu_sel = 0; }
  if (inp &(PBTN_LEFT|PBTN_L)) { menu_sel-=10; if (menu_sel < 0) menu_sel = 0; }
  if (inp &(PBTN_RIGHT|PBTN_R)) { menu_sel+=10; if (menu_sel > PicoPatchCount) menu_sel = PicoPatchCount; }
  if (inp & PBTN_MOK) {
   if (menu_sel < PicoPatchCount)
    PicoPatches[menu_sel].active = !PicoPatches[menu_sel].active;
   else break;
  }
  if (inp & PBTN_MBACK)
   break;
 }
}
