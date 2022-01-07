
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
magic_for_addr(vm_offset_t addr, uint16_t magic_xor)
{
 uint16_t magic = addr & 0xFFFF;
 magic ^= (addr >> 16) & 0xFFFF;
 magic ^= (addr >> 32) & 0xFFFF;
 magic ^= (addr >> 48) & 0xFFFF;
 magic ^= magic_xor;
 return magic;
}
