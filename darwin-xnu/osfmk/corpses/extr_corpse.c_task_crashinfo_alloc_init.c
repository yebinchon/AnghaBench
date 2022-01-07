
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mach_vm_address_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_4__ {int kcd_user_flags; } ;


 int CORPSE_CRASHINFO_HAS_REF ;
 scalar_t__ KERN_SUCCESS ;
 int TASK_CRASHINFO_BEGIN ;
 TYPE_1__* kcdata_memory_alloc_init (int ,int ,unsigned int,unsigned int) ;
 scalar_t__ task_crashinfo_get_ref (int) ;
 int task_crashinfo_release_ref (int) ;

kcdata_descriptor_t
task_crashinfo_alloc_init(mach_vm_address_t crash_data_p, unsigned size,
  uint32_t kc_u_flags, unsigned kc_flags)
{
 kcdata_descriptor_t kcdata;

 if (kc_u_flags & CORPSE_CRASHINFO_HAS_REF) {
  if (KERN_SUCCESS != task_crashinfo_get_ref(kc_u_flags)) {
   return ((void*)0);
  }
 }

 kcdata = kcdata_memory_alloc_init(crash_data_p, TASK_CRASHINFO_BEGIN, size,
   kc_flags);
 if (kcdata) {
  kcdata->kcd_user_flags = kc_u_flags;
 } else if (kc_u_flags & CORPSE_CRASHINFO_HAS_REF) {
  task_crashinfo_release_ref(kc_u_flags);
 }
 return kcdata;
}
