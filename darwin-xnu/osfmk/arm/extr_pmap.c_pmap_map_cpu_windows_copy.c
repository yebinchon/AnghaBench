
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int ppnum_t ;


 unsigned int pmap_map_cpu_windows_copy_internal (int ,int ,unsigned int) ;

unsigned int
pmap_map_cpu_windows_copy(
 ppnum_t pn,
 vm_prot_t prot,
 unsigned int wimg_bits)
{
 return pmap_map_cpu_windows_copy_internal(pn, prot, wimg_bits);
}
