
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* handler ) (int ,int) ;scalar_t__ beh; int id; int selectable; int enabled; } ;
typedef TYPE_1__ menu_entry ;


 scalar_t__ MB_NONE ;
 int PBTN_DOWN ;
 int PBTN_L ;
 int PBTN_LEFT ;
 int PBTN_MBACK ;
 int PBTN_MENU ;
 int PBTN_MOK ;
 int PBTN_R ;
 int PBTN_RIGHT ;
 int PBTN_UP ;
 int debug_menu_loop () ;
 int in_menu_wait (int,int *,int) ;
 int in_menu_wait_any (int *,int) ;
 int lprintf (char*) ;
 int me_count (TYPE_1__*) ;
 int me_draw (TYPE_1__*,int,void (*) ()) ;
 scalar_t__ me_process (TYPE_1__*,int,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int me_loop_d(menu_entry *menu, int *menu_sel, void (*draw_prep)(void), void (*draw_more)(void))
{
 int ret = 0, inp, sel = *menu_sel, menu_sel_max;

 menu_sel_max = me_count(menu) - 1;
 if (menu_sel_max < 0) {
  lprintf("no enabled menu entries\n");
  return 0;
 }

 while ((!menu[sel].enabled || !menu[sel].selectable) && sel < menu_sel_max)
  sel++;


 me_draw(menu, sel, ((void*)0));
 while (in_menu_wait_any(((void*)0), 50) & (PBTN_MOK|PBTN_MBACK|PBTN_MENU));

 for (;;)
 {
  if (draw_prep != ((void*)0))
   draw_prep();

  me_draw(menu, sel, draw_more);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|
   PBTN_MOK|PBTN_MBACK|PBTN_MENU|PBTN_L|PBTN_R, ((void*)0), 70);
  if (inp & (PBTN_MENU|PBTN_MBACK))
   break;

  if (inp & PBTN_UP ) {
   do {
    sel--;
    if (sel < 0)
     sel = menu_sel_max;
   }
   while (!menu[sel].enabled || !menu[sel].selectable);
  }
  if (inp & PBTN_DOWN) {
   do {
    sel++;
    if (sel > menu_sel_max)
     sel = 0;
   }
   while (!menu[sel].enabled || !menu[sel].selectable);
  }


  if ((inp & (PBTN_L|PBTN_R)) == (PBTN_L|PBTN_R))
   debug_menu_loop();

  if (inp & (PBTN_LEFT|PBTN_RIGHT|PBTN_L|PBTN_R)) {
   if (me_process(&menu[sel], (inp & (PBTN_RIGHT|PBTN_R)) ? 1 : 0,
      inp & (PBTN_L|PBTN_R)))
    continue;
  }

  if (inp & (PBTN_MOK|PBTN_LEFT|PBTN_RIGHT|PBTN_L|PBTN_R))
  {

   if (menu[sel].handler != ((void*)0) && (menu[sel].beh != MB_NONE || (inp & PBTN_MOK))) {
    ret = menu[sel].handler(menu[sel].id, inp);
    if (ret) break;
    menu_sel_max = me_count(menu) - 1;
   }
  }
 }
 *menu_sel = sel;

 return ret;
}
