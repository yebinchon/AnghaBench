
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osThreadHandle ;


 int sceKernelGetThreadId () ;

pte_osThreadHandle pte_osThreadGetHandle(void)
{
   return sceKernelGetThreadId();
}
