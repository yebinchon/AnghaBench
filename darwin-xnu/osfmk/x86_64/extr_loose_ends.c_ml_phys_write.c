
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pmap_paddr_t ;


 int ml_phys_write_data (int ,unsigned int,int) ;

void ml_phys_write(vm_offset_t paddr, unsigned int data)
{
        ml_phys_write_data((pmap_paddr_t)paddr, data, 4);
}
