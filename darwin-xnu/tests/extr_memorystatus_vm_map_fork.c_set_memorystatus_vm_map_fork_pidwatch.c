
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pid_t ;
typedef int new_value ;


 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int sysctlbyname (char*,int *,int *,int *,size_t) ;

__attribute__((used)) static void
set_memorystatus_vm_map_fork_pidwatch(pid_t pid)
{
 uint64_t new_value = (uint64_t)pid;
 size_t new_len = sizeof(new_value);
 int err;

 err = sysctlbyname("kern.memorystatus_vm_map_fork_pidwatch", ((void*)0), ((void*)0), &new_value, new_len);
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(err, "set sysctlbyname(kern.memorystatus_vm_map_fork_pidwatch...) failed");
 return;
}
