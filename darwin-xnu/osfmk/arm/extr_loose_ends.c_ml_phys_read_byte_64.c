
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;
typedef scalar_t__ addr64_t ;


 unsigned int ml_phys_read_data (int ,int) ;

unsigned int ml_phys_read_byte_64(addr64_t paddr64)
{
        return ml_phys_read_data((pmap_paddr_t)paddr64, 1);
}
