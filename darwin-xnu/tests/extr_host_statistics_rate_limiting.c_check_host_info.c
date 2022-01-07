
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct all_host_info {int host_expired_task_info; int host_vm_info_rev1; int host_vm_info_rev0; int host_vm_info64_rev0; } ;


 int HOST_VM_INFO64_REV0_COUNT ;
 int HOST_VM_INFO64_REV1_COUNT ;
 int HOST_VM_INFO_REV0_COUNT ;
 int HOST_VM_INFO_REV1_COUNT ;
 int HOST_VM_INFO_REV2_COUNT ;
 int MAX_ATTEMP_PER_SEC ;
 int TASK_POWER_INFO_COUNT ;
 int TASK_POWER_INFO_V2_COUNT ;
 int T_ASSERT_EQ (char,char,char*,unsigned long,unsigned long) ;
 int T_LOG (char*) ;
 int T_QUIET ;

__attribute__((used)) static void
check_host_info(struct all_host_info* data, unsigned long iter, char lett){
 char* datap;
 unsigned long i,j;


 for ( j = 0 ; j < iter; j++) {
  datap = (char*) &data[j].host_vm_info64_rev0;
  for ( i = (HOST_VM_INFO64_REV0_COUNT * sizeof(int)); i< (HOST_VM_INFO64_REV1_COUNT * sizeof(int)); i++) {
   T_QUIET;T_ASSERT_EQ(datap[i], lett, "HOST_VM_INFO64_REV0 byte %lu iter %lu", i, j);
  }

  datap = (char*) &data[j].host_vm_info_rev0;
  for ( i = (HOST_VM_INFO_REV0_COUNT * sizeof(int)); i< (HOST_VM_INFO_REV2_COUNT * sizeof(int)); i++) {
   T_QUIET;T_ASSERT_EQ(datap[i], lett, "HOST_VM_INFO_REV0 byte %lu iter %lu", i, j);
  }

  datap = (char*) &data[j].host_vm_info_rev1;
  for ( i = (HOST_VM_INFO_REV1_COUNT * sizeof(int)); i< (HOST_VM_INFO_REV2_COUNT * sizeof(int)); i++) {
   T_QUIET;T_ASSERT_EQ(datap[i], lett, "HOST_VM_INFO_REV1 byte %lu iter %lu", i, j);
  }

  datap = (char*) &data[j].host_expired_task_info;
  for ( i = (TASK_POWER_INFO_COUNT * sizeof(int)); i< (TASK_POWER_INFO_V2_COUNT * sizeof(int)); i++) {
   T_QUIET;T_ASSERT_EQ(datap[i], lett, "TASK_POWER_INFO_COUNT byte %lu iter %lu", i, j);
  }
 }
 T_LOG("No data overflow");

 datap = (char*) data;


 for ( i = 0 ; i < sizeof(struct all_host_info) ; i++ )
  for ( j = MAX_ATTEMP_PER_SEC - 1 ; j < iter - 1; j++) {
   T_QUIET; T_ASSERT_EQ(datap[i+(j * sizeof(struct all_host_info))], datap[i+((j+1) * sizeof(struct all_host_info))], "all_host_info iter %lu does not match iter %lu", j, j+1);
  }

 T_LOG("Data was cached");
}
