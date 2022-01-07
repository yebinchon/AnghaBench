
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int THREAD_PROC ;
typedef int LISTENER ;
typedef int CEDAR ;


 int * NewListenerEx5 (int *,int ,int ,int *,void*,int,int,int volatile*,int ,int) ;

LISTENER *NewListenerEx4(CEDAR *cedar, UINT proto, UINT port, THREAD_PROC *proc, void *thread_param, bool local_only, bool shadow_ipv6,
       volatile UINT *natt_global_udp_port, UCHAR rand_port_id)
{
 return NewListenerEx5(cedar, proto, port, proc, thread_param,
  local_only, shadow_ipv6, natt_global_udp_port, rand_port_id, 0);
}
