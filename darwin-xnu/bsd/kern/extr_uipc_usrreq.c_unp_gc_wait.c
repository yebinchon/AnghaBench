
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_thread () ;
 int msleep (scalar_t__*,int ,int ,char*,int *) ;
 int uipc_lock ;
 scalar_t__ unp_gcing ;
 scalar_t__ unp_gcthread ;
 int unp_gcwait ;

void
unp_gc_wait(void)
{
 if (unp_gcthread == current_thread())
  return;

 while (unp_gcing != 0) {
  unp_gcwait = 1;
  msleep(&unp_gcing, uipc_lock, 0 , "unp_gc_wait", ((void*)0));
 }
}
