
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;
typedef scalar_t__ addr64_t ;


 int ml_phys_write_long_long (int ,unsigned long long) ;

void ml_phys_write_double_64(addr64_t paddr64, unsigned long long data)
{
        ml_phys_write_long_long((pmap_paddr_t)paddr64, data);
}
