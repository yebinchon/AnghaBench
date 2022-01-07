
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PicoCartLoadProgressCB ;
 int menu_draw_begin (int ) ;
 int menu_draw_end () ;
 int smalltext_out16 (int,int,char*,int) ;

void menu_romload_end(void)
{
 PicoCartLoadProgressCB = ((void*)0);
 menu_draw_begin(0);
 smalltext_out16(1, 30, "Starting emulation...", 0xffff);
 menu_draw_end();
}
