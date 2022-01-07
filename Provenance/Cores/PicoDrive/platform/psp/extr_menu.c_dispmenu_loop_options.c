
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int menu_id ;
struct TYPE_4__ {int* reg; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_5__ {float scale; float hscale40; float hscale32; int EmuOpt; } ;
 int OPT3_ENTRY_COUNT ;
 unsigned long PBTN_CIRCLE ;
 unsigned long PBTN_DOWN ;
 unsigned long PBTN_LEFT ;
 unsigned long PBTN_RIGHT ;
 unsigned long PBTN_UP ;
 unsigned long PBTN_X ;
 TYPE_3__ Pico ;
 TYPE_2__ currentConfig ;
 int draw_dispmenu_options (int) ;
 unsigned long in_menu_wait (unsigned long,int ) ;
 int me_count_enabled (int ,int ) ;
 int me_index2id (int ,int ,int) ;
 int me_process (int ,int ,int,int) ;
 int menu_opt3_preview (int) ;
 int opt3_entries ;
 unsigned long psp_pad_read (int ) ;

__attribute__((used)) static void dispmenu_loop_options(void)
{
 static int menu_sel = 0;
 int menu_sel_max, is_32col = (Pico.video.reg[12]&1)^1;
 unsigned long inp = 0;
 menu_id selected_id;

 menu_sel_max = me_count_enabled(opt3_entries, OPT3_ENTRY_COUNT) - 1;

 for (;;)
 {
  draw_dispmenu_options(menu_sel);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_X|PBTN_CIRCLE, 0);
  if (inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
  if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
  selected_id = me_index2id(opt3_entries, OPT3_ENTRY_COUNT, menu_sel);
  if (selected_id == 133 && is_32col) { is_32col = 0; menu_opt3_preview(is_32col); }
  if (selected_id == 134 && !is_32col) { is_32col = 1; menu_opt3_preview(is_32col); }

  if (inp & (PBTN_LEFT|PBTN_RIGHT))
  {
   float *setting = ((void*)0);
   int tmp;
   me_process(opt3_entries, OPT3_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0);
   switch (selected_id) {
    case 129: setting = &currentConfig.scale; break;
    case 133: setting = &currentConfig.hscale40; is_32col = 0; break;
    case 134: setting = &currentConfig.hscale32; is_32col = 1; break;
    case 136:
    case 135:
    case 138: menu_opt3_preview(is_32col); break;
    case 128:
     tmp = ((currentConfig.EmuOpt>>13)&1) | ((currentConfig.EmuOpt>>15)&2);
     tmp = (inp & PBTN_LEFT) ? (tmp>>1) : ((tmp<<1)|1);
     if (tmp > 3) tmp = 3;
     currentConfig.EmuOpt &= ~0x12000;
     currentConfig.EmuOpt |= ((tmp&2)<<15) | ((tmp&1)<<13);
     break;
    default: break;
   }
   if (setting != ((void*)0)) {
    while ((inp = psp_pad_read(0)) & (PBTN_LEFT|PBTN_RIGHT)) {
     *setting += (inp & PBTN_LEFT) ? -0.01 : 0.01;
     if (*setting <= 0) *setting = 0.01;
     menu_opt3_preview(is_32col);
     draw_dispmenu_options(menu_sel);
    }
   }
  }
  if (inp & PBTN_CIRCLE) {
   me_process(opt3_entries, OPT3_ENTRY_COUNT, selected_id, 1);
   switch (selected_id) {
    case 137:
     return;
    case 131:
     currentConfig.scale = currentConfig.hscale40 = currentConfig.hscale32 = 1.0;
     menu_opt3_preview(is_32col);
     break;
    case 130:
     currentConfig.scale = 1.20;
     currentConfig.hscale40 = 1.00;
     currentConfig.hscale32 = 1.25;
     menu_opt3_preview(is_32col);
     break;
    case 132:
     currentConfig.scale = 1.20;
     currentConfig.hscale40 = 1.25;
     currentConfig.hscale32 = 1.56;
     menu_opt3_preview(is_32col);
     break;
    case 136:
     menu_opt3_preview(is_32col);
     break;
    default: break;
   }
  }
  if (inp & PBTN_X) return;
 }
}
