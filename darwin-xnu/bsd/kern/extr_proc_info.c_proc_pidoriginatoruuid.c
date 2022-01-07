
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
typedef int pid_t ;


 int proc_pidoriginatorpid_uuid (int ,int ,int *) ;

int
proc_pidoriginatoruuid(uuid_t uuid, uint32_t buffersize)
{
 pid_t originator_pid;
 return (proc_pidoriginatorpid_uuid(uuid, buffersize, &originator_pid));
}
