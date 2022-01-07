
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void pmap_unmap_cpu_windows_copy_internal (unsigned int) ;

void
pmap_unmap_cpu_windows_copy(
 unsigned int index)
{
 return pmap_unmap_cpu_windows_copy_internal(index);
}
