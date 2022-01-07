
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_15__ {int ip_srights; } ;
struct TYPE_14__ {scalar_t__ ith_self; TYPE_2__* ith_sself; } ;


 scalar_t__ IP_NULL ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int ip_active (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_reference (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 TYPE_2__* ipc_port_copy_send (TYPE_2__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

ipc_port_t
retrieve_thread_self_fast(
 thread_t thread)
{
 ipc_port_t port;

 assert(thread == current_thread());

 thread_mtx_lock(thread);

 assert(thread->ith_self != IP_NULL);

 if ((port = thread->ith_sself) == thread->ith_self) {


  ip_lock(port);
  assert(ip_active(port));
  ip_reference(port);
  port->ip_srights++;
  ip_unlock(port);
 }
 else
  port = ipc_port_copy_send(port);

 thread_mtx_unlock(thread);

 return port;
}
