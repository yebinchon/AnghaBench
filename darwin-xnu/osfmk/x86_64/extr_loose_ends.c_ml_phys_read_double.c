
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pmap_paddr_t ;


 unsigned long long ml_phys_read_long_long (int ) ;

unsigned long long ml_phys_read_double(vm_offset_t paddr)
{
        return ml_phys_read_long_long((pmap_paddr_t)paddr);
}
