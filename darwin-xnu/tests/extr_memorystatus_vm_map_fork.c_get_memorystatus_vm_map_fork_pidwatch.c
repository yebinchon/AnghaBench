
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;


 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int sysctlbyname (char*,int *,size_t*,int *,int ) ;

__attribute__((used)) static uint64_t
get_memorystatus_vm_map_fork_pidwatch()
{
 uint64_t value = 0;
 size_t val_len = sizeof(value);
 int err;

 err = sysctlbyname("kern.memorystatus_vm_map_fork_pidwatch", &value, &val_len, ((void*)0), 0);
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(err, "get sysctlbyname(kern.memorystatus_vm_map_fork_pidwatch...) failed");

 return value;
}
