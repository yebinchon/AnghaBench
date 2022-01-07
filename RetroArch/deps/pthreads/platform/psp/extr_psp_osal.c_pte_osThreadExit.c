
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelExitThread (int ) ;

void pte_osThreadExit(void)
{
   sceKernelExitThread(0);
}
