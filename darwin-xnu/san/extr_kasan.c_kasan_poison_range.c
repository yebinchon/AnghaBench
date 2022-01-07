
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int uint8_t ;


 int assert (int) ;
 int kasan_poison (int,int ,int ,int,int ) ;

void
kasan_poison_range(vm_offset_t base, vm_size_t size, uint8_t flags)
{


 assert((base & 0x07) == 0);
 assert((size & 0x07) == 0);
 kasan_poison(base, 0, 0, size, flags);
}
