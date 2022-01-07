
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBTN_MA3 ;
 int PDebugZ80Frame () ;
 int emu_sound_stop () ;
 int emu_sound_wait () ;
 int in_menu_wait_any (int *,int ) ;
 int pemu_sound_start () ;

__attribute__((used)) static void mplayer_loop(void)
{
 pemu_sound_start();

 while (1)
 {
  PDebugZ80Frame();
  if (in_menu_wait_any(((void*)0), 0) & PBTN_MA3)
   break;
  emu_sound_wait();
 }

 emu_sound_stop();
}
