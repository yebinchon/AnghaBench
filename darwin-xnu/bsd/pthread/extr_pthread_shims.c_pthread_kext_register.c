
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_functions_t ;
typedef int * pthread_callbacks_t ;


 int panic (char*) ;
 int pthread_callbacks ;
 int * pthread_functions ;

void
pthread_kext_register(pthread_functions_t fns, pthread_callbacks_t *callbacks)
{
 if (pthread_functions != ((void*)0)) {
  panic("Re-initialisation of pthread kext callbacks.");
 }

 if (callbacks != ((void*)0)) {
  *callbacks = &pthread_callbacks;
 } else {
  panic("pthread_kext_register called without callbacks pointer.");
 }

 if (fns) {
  pthread_functions = fns;
 }
}
