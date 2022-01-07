
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tss_t ;


 scalar_t__ TlsSetValue (int ,void*) ;
 scalar_t__ pthread_setspecific (int ,void*) ;
 int thrd_error ;
 int thrd_success ;

int tss_set(tss_t key, void *val)
{






  if (pthread_setspecific(key, val) != 0)
  {
    return thrd_error;
  }

  return thrd_success;
}
