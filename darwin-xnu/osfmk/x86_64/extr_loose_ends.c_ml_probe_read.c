
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_paddr_t ;
typedef int boolean_t ;


 int FALSE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int TRUE ;
 unsigned int ml_phys_read (int ) ;

boolean_t
ml_probe_read(vm_offset_t paddr, unsigned int *val)
{
    if ((PAGE_SIZE - (paddr & PAGE_MASK)) < 4)
        return FALSE;

    *val = ml_phys_read((pmap_paddr_t)paddr);

    return TRUE;
}
