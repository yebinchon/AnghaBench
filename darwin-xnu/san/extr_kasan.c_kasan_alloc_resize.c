
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 scalar_t__ KASAN_GUARD_PAD ;
 int PAGE_SIZE ;
 scalar_t__ os_add_overflow (int,int,int*) ;
 int panic (char*,int) ;

vm_size_t
kasan_alloc_resize(vm_size_t size)
{
 vm_size_t tmp;
 if (os_add_overflow(size, 4 * PAGE_SIZE, &tmp)) {
  panic("allocation size overflow (%lu)", size);
 }


 size += KASAN_GUARD_PAD;


 size += 8 - (size % 8);

 return size;
}
