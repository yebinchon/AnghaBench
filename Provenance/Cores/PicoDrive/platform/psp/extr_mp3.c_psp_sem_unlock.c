
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 int lprintf (char*,int ,int) ;
 int sceKernelSignalSema (int ,int) ;

__attribute__((used)) static void psp_sem_unlock(SceUID sem)
{
 int ret = sceKernelSignalSema(sem, 1);
 if (ret < 0) lprintf("sceKernelSignalSema(%08x) failed with %08x\n", sem, ret);
}
