
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;


 int memory_entry_access_tracking_internal (int ,int*,int *,int *) ;

kern_return_t
mach_memory_entry_access_tracking(
 ipc_port_t entry_port,
 int *access_tracking,
 uint32_t *access_tracking_reads,
 uint32_t *access_tracking_writes)
{
 return memory_entry_access_tracking_internal(entry_port,
           access_tracking,
           access_tracking_reads,
           access_tracking_writes);
}
