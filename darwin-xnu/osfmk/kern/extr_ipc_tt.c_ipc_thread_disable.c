
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_3__ {scalar_t__ ith_self; } ;


 int IKOT_NONE ;
 int IKO_NULL ;
 scalar_t__ IP_NULL ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;

void
ipc_thread_disable(
 thread_t thread)
{
 ipc_port_t kport = thread->ith_self;

 if (kport != IP_NULL)
  ipc_kobject_set(kport, IKO_NULL, IKOT_NONE);
}
