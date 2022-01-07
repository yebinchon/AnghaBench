
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SceUID ;


 int PSP_O_RDONLY ;
 int lprintf (char*,scalar_t__) ;
 int sceDisplayWaitVblankStart () ;
 int sceIoClose (scalar_t__) ;
 scalar_t__ sceIoOpen (char*,int ,int) ;
 int sceKernelDelayThread (int) ;

void psp_resume_suspend(void)
{


 SceUID fd;
 int i;
 for (i = 0; i < 30; i++) {
  fd = sceIoOpen("EBOOT.PBP", PSP_O_RDONLY, 0777);
  if (fd >= 0) break;
  sceKernelDelayThread(100 * 1024);
 }
 if (fd >= 0) sceIoClose(fd);
 sceDisplayWaitVblankStart();
 if (i < 30)
  lprintf("io resumed after %i tries\n", i);
 else {
  lprintf("io resume failed with %08x\n", fd);
  sceKernelDelayThread(500 * 1024);
 }
}
