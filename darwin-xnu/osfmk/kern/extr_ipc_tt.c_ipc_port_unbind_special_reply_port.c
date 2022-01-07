
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
typedef int * ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int * ith_special_reply_port; } ;


 scalar_t__ FALSE ;
 int IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ ip_active (int *) ;
 int ip_lock (int *) ;
 int ip_release (int *) ;
 int ip_unlock (int *) ;
 int ipc_port_adjust_special_reply_port_locked (int *,int *,int ,scalar_t__) ;

__attribute__((used)) static kern_return_t
ipc_port_unbind_special_reply_port(
 thread_t thread,
 boolean_t unbind_active_port)
{
 ipc_port_t special_reply_port = thread->ith_special_reply_port;

 ip_lock(special_reply_port);


 if (unbind_active_port == FALSE && ip_active(special_reply_port)) {
  ip_unlock(special_reply_port);
  return KERN_FAILURE;
 }

 thread->ith_special_reply_port = ((void*)0);
 ipc_port_adjust_special_reply_port_locked(special_reply_port, ((void*)0),
  IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY, FALSE);


 ip_release(special_reply_port);
 return KERN_SUCCESS;
}
