
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int name; } ;
typedef int SceUID ;
typedef TYPE_1__ SceKernelThreadInfo ;


 void* globalTls ;
 int sceKernelReferThreadStatus (int ,TYPE_1__*) ;
 int sscanf (int ,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void *getTlsStructFromThread(SceUID thid)
{
   SceKernelThreadInfo thinfo;
   unsigned int ptr;
   unsigned int thrNum;
   int numMatches;

   thinfo.size = sizeof(SceKernelThreadInfo);

   sceKernelReferThreadStatus(thid, &thinfo);

   numMatches = sscanf(thinfo.name,"pthread%04d__%x", &thrNum, &ptr);





   if (numMatches == 2)
      return (void *) ptr;

   return globalTls;
}
