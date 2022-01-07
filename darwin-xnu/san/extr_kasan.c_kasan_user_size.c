
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct kasan_alloc_header {scalar_t__ magic; int user_size; } ;


 int LIVE_XOR ;
 int assert (int) ;
 struct kasan_alloc_header* header_for_user_addr (int ) ;
 scalar_t__ magic_for_addr (int ,int ) ;

vm_size_t
kasan_user_size(vm_offset_t addr)
{
 struct kasan_alloc_header *h = header_for_user_addr(addr);
 assert(h->magic == magic_for_addr(addr, LIVE_XOR));
 return h->user_size;
}
