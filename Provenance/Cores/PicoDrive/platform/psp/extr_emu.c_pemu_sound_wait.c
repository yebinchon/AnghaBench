
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int psp_msleep (int) ;
 int samples_block ;
 int samples_done ;
 int samples_made ;
 int sound_thread_exit ;

void pemu_sound_wait(void)
{

 while (!sound_thread_exit && samples_made - samples_done > samples_block * 4)
  psp_msleep(10);
}
