
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_margin ;
 int FALSE ;
 int * antic_memory ;
 int anticmode ;
 int* chars_read ;
 int dmactl_bug_chdata ;
 int draw_antic_0_dmactl_bug ;
 int draw_antic_2_dmactl_bug ;
 int draw_antic_ptr ;
 int draw_antic_ptr_changed ;
 size_t md ;
 int need_load ;
 int saved_draw_antic_ptr ;

__attribute__((used)) static void set_dmactl_bug(void){
 need_load = FALSE;
 saved_draw_antic_ptr = draw_antic_ptr;
 draw_antic_ptr_changed = 1;
 if (anticmode == 2 || anticmode == 3 || anticmode == 0xf) {
  draw_antic_ptr = draw_antic_2_dmactl_bug;
  dmactl_bug_chdata = (anticmode == 0xf) ? 0 : antic_memory[ANTIC_margin + chars_read[md] - 1];
 }
 else {
  draw_antic_ptr = draw_antic_0_dmactl_bug;
 }
}
