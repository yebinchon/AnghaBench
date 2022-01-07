
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_osThreadHandle ;
struct TYPE_3__ {int size; int currentPriority; } ;
typedef TYPE_1__ SceKernelThreadInfo ;


 int sceKernelReferThreadStatus (int ,TYPE_1__*) ;

int pte_osThreadGetPriority(pte_osThreadHandle threadHandle)
{
   SceKernelThreadInfo thinfo;

   thinfo.size = sizeof(SceKernelThreadInfo);

   sceKernelReferThreadStatus(threadHandle, &thinfo);

   return thinfo.currentPriority;
}
