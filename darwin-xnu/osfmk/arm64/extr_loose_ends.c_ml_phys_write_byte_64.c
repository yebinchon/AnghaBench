
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;
typedef scalar_t__ addr64_t ;


 int ml_phys_write_data (int ,unsigned int,int) ;

void ml_phys_write_byte_64(addr64_t paddr64, unsigned int data)
{
        ml_phys_write_data((pmap_paddr_t)paddr64, data, 1);
}
