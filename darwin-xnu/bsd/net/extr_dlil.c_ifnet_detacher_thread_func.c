
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 scalar_t__ PZERO ;
 int VERIFY (int ) ;
 int dlil_if_lock () ;
 int dlil_if_unlock () ;
 int dlil_ifnet_lock ;
 int ifnet_delayed_run ;
 int ifnet_detacher_thread_cont ;
 int msleep0 (int *,int *,scalar_t__,char*,int ,int ) ;

__attribute__((used)) static void
ifnet_detacher_thread_func(void *v, wait_result_t w)
{
#pragma unused(v, w)
 dlil_if_lock();
 (void) msleep0(&ifnet_delayed_run, &dlil_ifnet_lock,
     (PZERO - 1), "ifnet_detacher", 0, ifnet_detacher_thread_cont);




 dlil_if_unlock();
 VERIFY(0);
}
