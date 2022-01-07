
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_address_t ;
struct kasan_alloc_header {int left_rz; int alloc_size; int user_size; int crc; int frames; int magic; } ;
struct kasan_alloc_footer {int backtrace; } ;


 int ASAN_HEAP_RZ ;
 int LIVE_XOR ;
 int assert (int) ;
 struct kasan_alloc_footer* footer_for_user_addr (int,int*) ;
 struct kasan_alloc_header* header_for_user_addr (int) ;
 int kasan_alloc_bt (int ,int,int) ;
 int kasan_alloc_crc (int) ;
 int kasan_poison (int,int,int,int,int ) ;
 int kasan_rz_clobber (int,int,int,int) ;
 int magic_for_addr (int,int ) ;

vm_address_t
kasan_alloc(vm_offset_t addr, vm_size_t size, vm_size_t req, vm_size_t leftrz)
{
 if (!addr) {
  return 0;
 }
 assert(size > 0);
 assert((addr % 8) == 0);
 assert((size % 8) == 0);

 vm_size_t rightrz = size - req - leftrz;

 kasan_poison(addr, req, leftrz, rightrz, ASAN_HEAP_RZ);
 kasan_rz_clobber(addr, req, leftrz, rightrz);

 addr += leftrz;


 struct kasan_alloc_header *h = header_for_user_addr(addr);
 h->magic = magic_for_addr(addr, LIVE_XOR);
 h->left_rz = leftrz;
 h->alloc_size = size;
 h->user_size = req;


 vm_size_t fsize;
 struct kasan_alloc_footer *f = footer_for_user_addr(addr, &fsize);
 h->frames = kasan_alloc_bt(f->backtrace, fsize, 2);


 h->crc = kasan_alloc_crc(addr);

 return addr;
}
