
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rusage_info_t ;


 int PROC_INFO_CALL_PIDRUSAGE ;
 int __proc_info (int ,int,int,int ,int *,int ) ;

int
proc_pid_rusage(int pid, int flavor, rusage_info_t *buffer)
{
 return (__proc_info(PROC_INFO_CALL_PIDRUSAGE, pid, flavor, 0, buffer, 0));
}
