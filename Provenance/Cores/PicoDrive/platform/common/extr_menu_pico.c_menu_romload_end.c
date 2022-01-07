
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PicoCDLoadProgressCB ;
 int * PicoCartLoadProgressCB ;
 scalar_t__ cdload_called ;
 int me_sfont_h ;
 int menu_draw_begin (int ,int) ;
 int menu_draw_end () ;
 int smalltext_out16 (int,int,char*,int) ;

void menu_romload_end(void)
{
 PicoCartLoadProgressCB = ((void*)0);
 PicoCDLoadProgressCB = ((void*)0);

 menu_draw_begin(0, 1);
 smalltext_out16(1, (cdload_called ? 6 : 3) * me_sfont_h,
  "Starting emulation...", 0xffff);
 menu_draw_end();
}
