
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* os_reason_t ;
typedef int mach_vm_address_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int osr_lock; int * osr_kcd_buf; int osr_kcd_descriptor; int osr_bufsize; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int KCDATA_BUFFER_BEGIN_OS_REASON ;
 int KCFLAG_USE_MEMCOPY ;
 scalar_t__ KERN_SUCCESS ;
 int OS_REASON_BUFFER_MAX_SIZE ;
 TYPE_1__* OS_REASON_NULL ;
 int VM_KERN_MEMORY_REASON ;
 int assert (int ) ;
 int bzero (int *,int ) ;
 int * kalloc_noblock_tag (int ,int ) ;
 int * kalloc_tag (int ,int ) ;
 scalar_t__ kcdata_memory_static_init (int *,int ,int ,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int os_reason_dealloc_buffer (TYPE_1__*) ;

__attribute__((used)) static int
os_reason_alloc_buffer_internal(os_reason_t cur_reason, uint32_t osr_bufsize,
    boolean_t can_block)
{
 if (cur_reason == OS_REASON_NULL) {
  return EINVAL;
 }

 if (osr_bufsize > OS_REASON_BUFFER_MAX_SIZE) {
  return EINVAL;
 }

 lck_mtx_lock(&cur_reason->osr_lock);

 os_reason_dealloc_buffer(cur_reason);

 if (osr_bufsize == 0) {
  lck_mtx_unlock(&cur_reason->osr_lock);
  return 0;
 }

 if (can_block) {
  cur_reason->osr_kcd_buf = kalloc_tag(osr_bufsize, VM_KERN_MEMORY_REASON);
  assert(cur_reason->osr_kcd_buf != ((void*)0));
 } else {
  cur_reason->osr_kcd_buf = kalloc_noblock_tag(osr_bufsize, VM_KERN_MEMORY_REASON);
  if (cur_reason->osr_kcd_buf == ((void*)0)) {
   lck_mtx_unlock(&cur_reason->osr_lock);
   return ENOMEM;
  }
 }

 bzero(cur_reason->osr_kcd_buf, osr_bufsize);

 cur_reason->osr_bufsize = osr_bufsize;

 if (kcdata_memory_static_init(&cur_reason->osr_kcd_descriptor, (mach_vm_address_t) cur_reason->osr_kcd_buf,
     KCDATA_BUFFER_BEGIN_OS_REASON, osr_bufsize, KCFLAG_USE_MEMCOPY) != KERN_SUCCESS) {
  os_reason_dealloc_buffer(cur_reason);

  lck_mtx_unlock(&cur_reason->osr_lock);
  return EIO;
 }

 lck_mtx_unlock(&cur_reason->osr_lock);

 return 0;
}
