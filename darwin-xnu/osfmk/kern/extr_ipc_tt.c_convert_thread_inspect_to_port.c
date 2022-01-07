
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_inspect_t ;
typedef int ipc_port_t ;


 int IP_NULL ;
 int thread_deallocate (int ) ;

ipc_port_t
convert_thread_inspect_to_port(thread_inspect_t thread)
{
 thread_deallocate(thread);
 return IP_NULL;
}
