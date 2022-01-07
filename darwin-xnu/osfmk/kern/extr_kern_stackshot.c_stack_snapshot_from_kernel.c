
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kcdata_descriptor {int dummy; } ;
typedef int mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT ;
 int KCDATA_BUFFER_BEGIN_STACKSHOT ;
 int KCFLAG_NO_AUTO_ENDBUFFER ;
 int KCFLAG_USE_MEMCOPY ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_LOCK_OWNED ;
 scalar_t__ KERN_NOT_SUPPORTED ;
 scalar_t__ KERN_SUCCESS ;
 int KF_STACKSHOT_OVRD ;
 int STACKSHOT_COLLECT_DELTA_SNAPSHOT ;
 int STACKSHOT_SUBSYS_LOCK () ;
 int STACKSHOT_SUBSYS_TRY_LOCK () ;
 int STACKSHOT_SUBSYS_UNLOCK () ;
 int STACKSHOT_TRYLOCK ;
 scalar_t__ TRUE ;
 scalar_t__ kcdata_memory_static_init (struct kcdata_descriptor*,int ,int,int,int) ;
 int kdp_snapshot_preflight (int,void*,int,int,struct kcdata_descriptor*,int ) ;
 unsigned int kdp_stack_snapshot_bytes_traced () ;
 scalar_t__ kern_feature_override (int ) ;
 int max_tracebuf_size ;
 int ml_set_interrupts_enabled (int ) ;
 int * stackshot_kcdata_p ;
 scalar_t__ stackshot_trap () ;

kern_return_t
stack_snapshot_from_kernel(int pid, void *buf, uint32_t size, uint32_t flags, uint64_t delta_since_timestamp, unsigned *bytes_traced)
{
 kern_return_t error = KERN_SUCCESS;
 boolean_t istate;







 if ((buf == ((void*)0)) || (size <= 0) || (bytes_traced == ((void*)0))) {
  return KERN_INVALID_ARGUMENT;
 }


 if (size > max_tracebuf_size) {
  size = max_tracebuf_size;
 }


 if (flags & STACKSHOT_TRYLOCK) {
  if (!STACKSHOT_SUBSYS_TRY_LOCK()) {
   return KERN_LOCK_OWNED;
  }
 } else {
  STACKSHOT_SUBSYS_LOCK();
 }

 struct kcdata_descriptor kcdata;
 uint32_t hdr_tag = (flags & STACKSHOT_COLLECT_DELTA_SNAPSHOT) ?
  KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT : KCDATA_BUFFER_BEGIN_STACKSHOT;

 error = kcdata_memory_static_init(&kcdata, (mach_vm_address_t)buf, hdr_tag, size,
           KCFLAG_USE_MEMCOPY | KCFLAG_NO_AUTO_ENDBUFFER);
 if (error) {
  goto out;
 }

 istate = ml_set_interrupts_enabled(FALSE);


 kdp_snapshot_preflight(pid, buf, size, flags, &kcdata, delta_since_timestamp);





 error = stackshot_trap();

 ml_set_interrupts_enabled(istate);

 *bytes_traced = kdp_stack_snapshot_bytes_traced();

out:
 stackshot_kcdata_p = ((void*)0);
 STACKSHOT_SUBSYS_UNLOCK();
 return error;
}
