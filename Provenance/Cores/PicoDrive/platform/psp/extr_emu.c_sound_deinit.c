
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelDeleteSema (int) ;
 int sceKernelSignalSema (int,int) ;
 int sound_sem ;
 int sound_thread_exit ;

__attribute__((used)) static void sound_deinit(void)
{
 sound_thread_exit = 1;
 sceKernelSignalSema(sound_sem, 1);
 sceKernelDeleteSema(sound_sem);
 sound_sem = -1;
}
