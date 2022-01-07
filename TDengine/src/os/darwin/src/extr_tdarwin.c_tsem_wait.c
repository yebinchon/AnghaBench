
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dispatch_semaphore_t ;


 int DISPATCH_TIME_FOREVER ;
 int dispatch_semaphore_wait (int ,int ) ;

int tsem_wait(dispatch_semaphore_t *sem) {
  dispatch_semaphore_wait(*sem, DISPATCH_TIME_FOREVER);
  return 0;
}
