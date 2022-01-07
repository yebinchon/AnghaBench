
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cothread_t ;


 int ConvertThreadToFiber (int ) ;
 scalar_t__ GetCurrentFiber () ;
 scalar_t__ co_active_ ;

cothread_t co_active() {
  if(!co_active_) {
    ConvertThreadToFiber(0);
    co_active_ = GetCurrentFiber();
  }
  return co_active_;
}
