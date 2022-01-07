
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union corpse_creation_gate {int value; int corpses; int user_faults; } ;
typedef int uint16_t ;
typedef int kern_return_t ;


 int CORPSE_CRASHINFO_HAS_REF ;
 int CORPSE_CRASHINFO_USER_FAULT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 scalar_t__ TOTAL_CORPSES_ALLOWED ;
 scalar_t__ TOTAL_USER_FAULTS_ALLOWED ;
 int assert (int) ;
 scalar_t__ atomic_compare_exchange_strong_explicit (int *,int *,int ,int ,int ) ;
 int atomic_load_explicit (int *,int ) ;
 int inflight_corpses ;
 int memory_order_relaxed ;

__attribute__((used)) static kern_return_t
task_crashinfo_get_ref(uint16_t kcd_u_flags)
{
 union corpse_creation_gate oldgate, newgate;

 assert(kcd_u_flags & CORPSE_CRASHINFO_HAS_REF);

 oldgate.value = atomic_load_explicit(&inflight_corpses, memory_order_relaxed);
 for (;;) {
  newgate = oldgate;
  if (kcd_u_flags & CORPSE_CRASHINFO_USER_FAULT) {
   if (newgate.user_faults++ >= TOTAL_USER_FAULTS_ALLOWED) {
    return KERN_RESOURCE_SHORTAGE;
   }
  }
  if (newgate.corpses++ >= TOTAL_CORPSES_ALLOWED) {
   return KERN_RESOURCE_SHORTAGE;
  }


  if (atomic_compare_exchange_strong_explicit(&inflight_corpses,
    &oldgate.value, newgate.value, memory_order_relaxed,
    memory_order_relaxed)) {
   return KERN_SUCCESS;
  }
 }
}
