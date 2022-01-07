
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ipc_importance_delayed_drop_call ;
 int ipc_importance_delayed_drop_queue ;
 int ipc_importance_task_delayed_drop_scan ;
 int panic (char*) ;
 int queue_init (int *) ;
 int * thread_call_allocate (int ,int *) ;

void
ipc_importance_thread_call_init(void)
{

 queue_init(&ipc_importance_delayed_drop_queue);
 ipc_importance_delayed_drop_call =
  thread_call_allocate(ipc_importance_task_delayed_drop_scan, ((void*)0));
 if (((void*)0) == ipc_importance_delayed_drop_call) {
  panic("ipc_importance_init");
 }
}
