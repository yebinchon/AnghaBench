
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int addr64_t ;


 int bzero_phys (int ,int ) ;

void
bzero_phys_nc(addr64_t src64, vm_size_t bytes)
{
 bzero_phys(src64, bytes);
}
