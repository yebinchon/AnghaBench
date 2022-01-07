
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelDelayThread (int) ;
 unsigned int sceKernelGetSystemTimeLow () ;

__attribute__((used)) static void simpleWait(unsigned int until)
{
 unsigned int tval;
 int diff;

 tval = sceKernelGetSystemTimeLow();
 diff = (int)until - (int)tval;
 if (diff >= 512 && diff < 100*1024)
  sceKernelDelayThread(diff);
}
