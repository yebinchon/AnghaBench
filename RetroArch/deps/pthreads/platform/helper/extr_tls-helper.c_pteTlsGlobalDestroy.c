
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int globalTlsLock ;
 int keysUsed ;
 int pte_osMutexDelete (int ) ;

void pteTlsGlobalDestroy(void)
{
  pte_osMutexDelete(globalTlsLock);
  free(keysUsed);
}
