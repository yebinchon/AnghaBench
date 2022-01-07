
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int THREAD_PROC ;
typedef int LISTENER ;
typedef int CEDAR ;


 int * NewListenerEx4 (int *,int ,int ,int *,void*,int,int,int *,int ) ;

LISTENER *NewListenerEx3(CEDAR *cedar, UINT proto, UINT port, THREAD_PROC *proc, void *thread_param, bool local_only, bool shadow_ipv6)
{
 return NewListenerEx4(cedar, proto, port, proc, thread_param, local_only, shadow_ipv6, ((void*)0), 0);
}
