
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_address_t ;
struct kasan_alloc_header {scalar_t__ left_rz; int alloc_size; } ;


 int assert (int) ;
 struct kasan_alloc_header* header_for_user_addr (scalar_t__) ;

vm_address_t
kasan_dealloc(vm_offset_t addr, vm_size_t *size)
{
 assert(size && addr);
 struct kasan_alloc_header *h = header_for_user_addr(addr);
 *size = h->alloc_size;
 return addr - h->left_rz;
}
