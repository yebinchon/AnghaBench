
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int host_flavor_t ;



 int HOST_CPU_LOAD_INFO_COUNT ;
 int HOST_CPU_LOAD_INFO_REV0 ;

 int HOST_EXPIRED_TASK_INFO_REV0 ;
 int HOST_EXPIRED_TASK_INFO_REV1 ;

 int HOST_EXTMOD_INFO64_COUNT ;
 int HOST_EXTMOD_INFO64_REV0 ;

 int HOST_LOAD_INFO_COUNT ;
 int HOST_LOAD_INFO_REV0 ;


 int HOST_VM_INFO64_REV0 ;
 int HOST_VM_INFO64_REV0_COUNT ;
 int HOST_VM_INFO64_REV1 ;
 int HOST_VM_INFO64_REV1_COUNT ;
 int HOST_VM_INFO_REV0 ;
 int HOST_VM_INFO_REV0_COUNT ;
 int HOST_VM_INFO_REV1 ;
 int HOST_VM_INFO_REV1_COUNT ;
 int HOST_VM_INFO_REV2 ;
 int HOST_VM_INFO_REV2_COUNT ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int TASK_POWER_INFO_COUNT ;
 int TASK_POWER_INFO_V2_COUNT ;

__attribute__((used)) static int
get_host_info_data_index(bool is_stat64, host_flavor_t flavor, mach_msg_type_number_t* count, kern_return_t* ret)
{
 switch (flavor) {

        case 128:
 if (!is_stat64){
  *ret = KERN_INVALID_ARGUMENT;
  return -1;
 }
 if (*count < HOST_VM_INFO64_REV0_COUNT) {
  *ret = KERN_FAILURE;
  return -1;
 }
 if (*count >= HOST_VM_INFO64_REV1_COUNT) {
  return HOST_VM_INFO64_REV1;
 }
 return HOST_VM_INFO64_REV0;

 case 131:
 if (!is_stat64){
  *ret = KERN_INVALID_ARGUMENT;
  return -1;
 }
 if (*count < HOST_EXTMOD_INFO64_COUNT) {
  *ret = KERN_FAILURE;
  return -1;
 }
 return HOST_EXTMOD_INFO64_REV0;

 case 130:
 if (*count < HOST_LOAD_INFO_COUNT) {
  *ret = KERN_FAILURE;
  return -1;
 }
 return HOST_LOAD_INFO_REV0;

 case 129:
 if (*count < HOST_VM_INFO_REV0_COUNT) {
  *ret = KERN_FAILURE;
  return -1;
 }
 if (*count >= HOST_VM_INFO_REV2_COUNT) {
  return HOST_VM_INFO_REV2;
 }
 if (*count >= HOST_VM_INFO_REV1_COUNT) {
  return HOST_VM_INFO_REV1;
 }
 return HOST_VM_INFO_REV0;

 case 133:
 if (*count < HOST_CPU_LOAD_INFO_COUNT) {
  *ret = KERN_FAILURE;
  return -1;
 }
 return HOST_CPU_LOAD_INFO_REV0;

 case 132:
 if (*count < TASK_POWER_INFO_COUNT){
  *ret = KERN_FAILURE;
  return -1;
 }
 if (*count >= TASK_POWER_INFO_V2_COUNT){
  return HOST_EXPIRED_TASK_INFO_REV1;
 }
 return HOST_EXPIRED_TASK_INFO_REV0;

 default:
 *ret = KERN_INVALID_ARGUMENT;
 return -1;

 }

}
