
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint8_t ;



__attribute__((used)) static uint8_t **
fakestack_flag_ptr(vm_offset_t ptr, vm_size_t sz)
{
 uint8_t **x = (uint8_t **)ptr;
 size_t idx = sz / 8;
 return &x[idx - 1];
}
