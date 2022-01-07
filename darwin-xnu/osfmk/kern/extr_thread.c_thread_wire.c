
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int kern_return_t ;
typedef int host_priv_t ;
typedef int boolean_t ;


 int thread_wire_internal (int ,int ,int ,int *) ;

kern_return_t
thread_wire(
 host_priv_t host_priv,
 thread_t thread,
 boolean_t wired)
{
    return (thread_wire_internal(host_priv, thread, wired, ((void*)0)));
}
