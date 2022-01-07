
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;
typedef int boolean_t ;
typedef int addr64_t ;


 int FALSE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int TRUE ;
 unsigned int ml_phys_read_64 (int ) ;

boolean_t
ml_probe_read_64(addr64_t paddr64, unsigned int *val)
{
    if ((PAGE_SIZE - (paddr64 & PAGE_MASK)) < 4)
        return FALSE;

    *val = ml_phys_read_64((pmap_paddr_t)paddr64);
    return TRUE;
}
