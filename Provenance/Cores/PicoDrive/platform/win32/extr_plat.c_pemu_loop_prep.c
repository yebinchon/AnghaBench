
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDF_RGB555 ;
 int PicoDrawSetOutBuf (int ,int) ;
 int PicoDrawSetOutFormat (int ,int) ;
 int g_screen_ptr ;
 int g_screen_width ;
 int pemu_sound_start () ;

void pemu_loop_prep(void)
{
 PicoDrawSetOutFormat(PDF_RGB555, 1);
 PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
 pemu_sound_start();
}
