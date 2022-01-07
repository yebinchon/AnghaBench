
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelDelayThread (unsigned int) ;

void pte_osThreadSleep(unsigned int msecs)
{
  sceKernelDelayThread(msecs*1000);
}
