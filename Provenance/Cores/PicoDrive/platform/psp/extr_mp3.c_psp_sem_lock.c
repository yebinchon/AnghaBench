
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 int lprintf (char*,int ,int) ;
 int sceKernelWaitSema (int ,int,int ) ;

__attribute__((used)) static void psp_sem_lock(SceUID sem)
{
 int ret = sceKernelWaitSema(sem, 1, 0);
 if (ret < 0) lprintf("sceKernelWaitSema(%08x) failed with %08x\n", sem, ret);
}
