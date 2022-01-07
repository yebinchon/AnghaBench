
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int ConvertThreadToFiber (int ) ;
 int CreateFiber (unsigned int,int ,void*) ;
 scalar_t__ GetCurrentFiber () ;
 scalar_t__ co_active_ ;
 int co_thunk ;

cothread_t co_create(unsigned int heapsize, void (*coentry)(void)) {
  if(!co_active_) {
    ConvertThreadToFiber(0);
    co_active_ = GetCurrentFiber();
  }
  return (cothread_t)CreateFiber(heapsize, co_thunk, (void*)coentry);
}
