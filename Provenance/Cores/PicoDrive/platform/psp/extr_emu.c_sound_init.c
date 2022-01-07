
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 int SOUND_BLOCK_SIZE_NTSC ;
 int lprintf (char*,int) ;
 int samples_block ;
 scalar_t__ samples_done ;
 scalar_t__ samples_made ;
 scalar_t__ sceKernelCreateSema (char*,int ,int ,int,int *) ;
 int sceKernelCreateThread (char*,int ,int,int,int ,int *) ;
 int sceKernelStartThread (int,int ,int ) ;
 scalar_t__ sound_sem ;
 int sound_thread ;
 scalar_t__ sound_thread_exit ;

__attribute__((used)) static void sound_init(void)
{
 SceUID thid;
 int ret;

 sound_sem = sceKernelCreateSema("sndsem", 0, 0, 1, ((void*)0));
 if (sound_sem < 0) lprintf("sceKernelCreateSema() failed: %i\n", sound_sem);

 samples_made = samples_done = 0;
 samples_block = SOUND_BLOCK_SIZE_NTSC;
 sound_thread_exit = 0;
 thid = sceKernelCreateThread("sndthread", sound_thread, 0x12, 0x10000, 0, ((void*)0));
 if (thid >= 0)
 {
  ret = sceKernelStartThread(thid, 0, 0);
  if (ret < 0) lprintf("sound_init: sceKernelStartThread returned %08x\n", ret);
 }
 else
  lprintf("sceKernelCreateThread failed: %i\n", thid);
}
