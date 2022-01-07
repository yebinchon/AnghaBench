
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;
typedef int pte_osMutexHandle ;
typedef int mutexName ;


 int MAX_PSP_UID ;
 int PTE_OS_OK ;
 int sceKernelCreateSema (char*,int ,int,int,int ) ;
 int snprintf (char*,int,char*,int) ;

pte_osResult pte_osMutexCreate(pte_osMutexHandle *pHandle)
{
   static int mutexCtr = 0;
   char mutexName[32];
   pte_osMutexHandle handle;

   if (mutexCtr++ > MAX_PSP_UID)
      mutexCtr = 0;

   snprintf(mutexName,sizeof(mutexName),"mutex%d",mutexCtr);

   handle = sceKernelCreateSema(mutexName,
         0,
         1,
         1,
         0);

   *pHandle = handle;

   return PTE_OS_OK;
}
