
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pmap_paddr_t ;


 scalar_t__ ml_phys_read_data (int ,int) ;

unsigned int ml_phys_read( vm_offset_t paddr)
{
        return (unsigned int)ml_phys_read_data((pmap_paddr_t)paddr, 4);
}
