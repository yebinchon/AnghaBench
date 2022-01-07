
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct all_host_info {int host_expired_task_info2; int host_expired_task_info; int host_cpu_load_info; int host_vm_info_rev2; int host_vm_info_rev1; int host_vm_info_rev0; int host_load_info; int host_extmod_info64; int host_vm_info64_rev1; int host_vm_info64_rev0; } ;
typedef int host_t ;
typedef int host_info_t ;
typedef int host_info64_t ;


 int HOST_CPU_LOAD_INFO ;
 unsigned int HOST_CPU_LOAD_INFO_COUNT ;
 int HOST_EXPIRED_TASK_INFO ;
 int HOST_EXTMOD_INFO64 ;
 unsigned int HOST_EXTMOD_INFO64_COUNT ;
 int HOST_LOAD_INFO ;
 unsigned int HOST_LOAD_INFO_COUNT ;
 int HOST_VM_INFO ;
 int HOST_VM_INFO64 ;
 unsigned int HOST_VM_INFO64_REV0_COUNT ;
 unsigned int HOST_VM_INFO64_REV1_COUNT ;
 unsigned int HOST_VM_INFO_REV0_COUNT ;
 unsigned int HOST_VM_INFO_REV1_COUNT ;
 unsigned int HOST_VM_INFO_REV2_COUNT ;
 unsigned int TASK_POWER_INFO_COUNT ;
 unsigned int TASK_POWER_INFO_V2_COUNT ;
 int T_ASSERT_POSIX_ZERO (int ,int *) ;
 int T_QUIET ;
 int host_statistics (int ,int ,int ,unsigned int*) ;
 int host_statistics64 (int ,int ,int ,unsigned int*) ;

__attribute__((used)) static void
get_host_info(struct all_host_info* data, host_t self, int iter){
 int i;
 unsigned int count;
 for (i = 0; i < iter; i++){
  count = HOST_VM_INFO64_REV0_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics64(self, HOST_VM_INFO64, (host_info64_t)&data[i].host_vm_info64_rev0, &count), ((void*)0));
  count = HOST_VM_INFO64_REV1_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics64(self, HOST_VM_INFO64, (host_info64_t)&data[i].host_vm_info64_rev1, &count), ((void*)0));
  count = HOST_EXTMOD_INFO64_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics64(self, HOST_EXTMOD_INFO64, (host_info64_t)&data[i].host_extmod_info64, &count), ((void*)0));
  count = HOST_LOAD_INFO_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_LOAD_INFO, (host_info_t)&data[i].host_load_info, &count), ((void*)0));
  count = HOST_VM_INFO_REV0_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_VM_INFO, (host_info_t)&data[i].host_vm_info_rev0, &count), ((void*)0));
  count = HOST_VM_INFO_REV1_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_VM_INFO, (host_info_t)&data[i].host_vm_info_rev1, &count), ((void*)0));
  count = HOST_VM_INFO_REV2_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_VM_INFO, (host_info_t)&data[i].host_vm_info_rev2, &count), ((void*)0));
  count = HOST_CPU_LOAD_INFO_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_CPU_LOAD_INFO, (host_info_t)&data[i].host_cpu_load_info, &count), ((void*)0));
  count = TASK_POWER_INFO_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_EXPIRED_TASK_INFO, (host_info_t)&data[i].host_expired_task_info, &count), ((void*)0));
  count = TASK_POWER_INFO_V2_COUNT;
  T_QUIET;T_ASSERT_POSIX_ZERO(host_statistics(self, HOST_EXPIRED_TASK_INFO, (host_info_t)&data[i].host_expired_task_info2, &count), ((void*)0));

 }

}
