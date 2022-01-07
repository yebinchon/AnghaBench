
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int PicoDrawSetCallbacks (int *,int *) ;
 int PicoDrawSetOutBuf (int ,int) ;
 int emu_cmn_forced_frame (int,int) ;
 int g_menubg_src_ptr ;
 int g_screen_ptr ;
 int g_screen_width ;

void pemu_forced_frame(int no_scale, int do_emu)
{
 PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
 PicoDrawSetCallbacks(((void*)0), ((void*)0));
 Pico.m.dirtyPal = 1;

 emu_cmn_forced_frame(no_scale, do_emu);

 g_menubg_src_ptr = g_screen_ptr;
}
