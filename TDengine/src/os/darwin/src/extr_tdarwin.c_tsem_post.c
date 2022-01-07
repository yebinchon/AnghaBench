
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dispatch_semaphore_t ;


 int dispatch_semaphore_signal (int ) ;

int tsem_post(dispatch_semaphore_t *sem) {
  dispatch_semaphore_signal(*sem);
  return 0;
}
