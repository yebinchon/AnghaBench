
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct fat_arch {int dummy; } ;
typedef int load_return_t ;
typedef int integer_t ;


 int CPU_ARCH_MASK ;
 int cpu_type () ;
 int fatfile_getarch (int ,int ,int,int ,struct fat_arch*) ;

load_return_t
fatfile_getarch_with_bits(
 integer_t archbits,
 vm_offset_t data_ptr,
 vm_size_t data_size,
 struct fat_arch *archret)
{




 return fatfile_getarch(data_ptr, data_size, (archbits & CPU_ARCH_MASK) | (cpu_type() & ~CPU_ARCH_MASK), 0, archret);
}
