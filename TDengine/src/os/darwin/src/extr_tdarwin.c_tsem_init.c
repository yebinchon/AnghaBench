
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * dispatch_semaphore_t ;


 int * dispatch_semaphore_create (unsigned int) ;

int tsem_init(dispatch_semaphore_t *sem, int pshared, unsigned int value) {
  *sem = dispatch_semaphore_create(value);
  if (*sem == ((void*)0)) {
    return -1;
  } else {
    return 0;
  }
}
