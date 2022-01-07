
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelDelayThread (int) ;

void psp_msleep(int ms)
{
 sceKernelDelayThread(ms * 1000);
}
