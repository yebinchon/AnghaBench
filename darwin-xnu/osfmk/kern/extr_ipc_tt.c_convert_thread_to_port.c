
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ ith_self; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

ipc_port_t
convert_thread_to_port(
 thread_t thread)
{
 ipc_port_t port;

 thread_mtx_lock(thread);

 if (thread->ith_self != IP_NULL)
  port = ipc_port_make_send(thread->ith_self);
 else
  port = IP_NULL;

 thread_mtx_unlock(thread);

 thread_deallocate(thread);

 return (port);
}
