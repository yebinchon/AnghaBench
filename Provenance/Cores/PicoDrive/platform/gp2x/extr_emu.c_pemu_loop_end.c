
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pemu_forced_frame (int ,int) ;
 int pemu_sound_stop () ;

void pemu_loop_end(void)
{
 pemu_sound_stop();


 pemu_forced_frame(0, 1);
}
