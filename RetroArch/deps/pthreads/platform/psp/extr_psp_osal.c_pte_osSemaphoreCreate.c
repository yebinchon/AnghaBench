
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semName ;
typedef int pte_osSemaphoreHandle ;
typedef int pte_osResult ;


 int MAX_PSP_UID ;
 int PTE_OS_OK ;
 int SEM_VALUE_MAX ;
 int sceKernelCreateSema (char*,int ,int,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

pte_osResult pte_osSemaphoreCreate(int initialValue, pte_osSemaphoreHandle *pHandle)
{
   pte_osSemaphoreHandle handle;
   static int semCtr = 0;
   char semName[32];

   if (semCtr++ > MAX_PSP_UID)
      semCtr = 0;

   snprintf(semName,sizeof(semName),"pthread_sem%d",semCtr);

   handle = sceKernelCreateSema(semName,
         0,
         initialValue,
         SEM_VALUE_MAX,
         0);

   *pHandle = handle;

   return PTE_OS_OK;
}
