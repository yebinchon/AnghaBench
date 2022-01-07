
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct kasan_alloc_header {scalar_t__ magic; scalar_t__ crc; scalar_t__ user_size; scalar_t__ alloc_size; scalar_t__ left_rz; } ;
typedef int access_t ;


 int ASAN_HEAP_LEFT_RZ ;
 int ASAN_HEAP_RIGHT_RZ ;
 unsigned int KASAN_HEAP_FAKESTACK ;
 unsigned int KASAN_HEAP_KALLOC ;
 unsigned int KASAN_HEAP_ZALLOC ;
 int LIVE_XOR ;
 int REASON_BAD_METADATA ;
 int REASON_INVALID_SIZE ;
 int REASON_MOD_OOB ;
 int TYPE_FSFREE ;
 int TYPE_KFREE ;
 int TYPE_ZFREE ;
 struct kasan_alloc_header* header_for_user_addr (scalar_t__) ;
 scalar_t__ kasan_alloc_crc (scalar_t__) ;
 int kasan_check_range (void*,scalar_t__,int ) ;
 int kasan_check_shadow (scalar_t__,scalar_t__,int ) ;
 int kasan_violation (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ magic_for_addr (scalar_t__,int ) ;

void
kasan_check_free(vm_offset_t addr, vm_size_t size, unsigned heap_type)
{
 struct kasan_alloc_header *h = header_for_user_addr(addr);


 access_t type = heap_type == KASAN_HEAP_KALLOC ? TYPE_KFREE :
                 heap_type == KASAN_HEAP_ZALLOC ? TYPE_ZFREE :
                 heap_type == KASAN_HEAP_FAKESTACK ? TYPE_FSFREE : 0;


 if (h->magic != magic_for_addr(addr, LIVE_XOR)) {
  kasan_violation(addr, size, type, REASON_BAD_METADATA);
 }
 if (h->crc != kasan_alloc_crc(addr)) {
  kasan_violation(addr, size, type, REASON_MOD_OOB);
 }


 if (h->user_size != size) {
  kasan_violation(addr, size, type, REASON_INVALID_SIZE);
 }

 vm_size_t rightrz_sz = h->alloc_size - h->left_rz - h->user_size;


 if (!kasan_check_shadow(addr - h->left_rz, h->left_rz, ASAN_HEAP_LEFT_RZ) ||
  !kasan_check_shadow(addr + h->user_size, rightrz_sz, ASAN_HEAP_RIGHT_RZ)) {
  kasan_violation(addr, size, type, REASON_BAD_METADATA);
 }


 kasan_check_range((void *)addr, size, type);
}
