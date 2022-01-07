
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;


 int TRUE ;
 int thread_ipc_override (int ,int ,int ) ;

void
thread_add_ipc_override(thread_t thread,
                        uint32_t qos_override)
{
 thread_ipc_override(thread, qos_override, TRUE);
}
