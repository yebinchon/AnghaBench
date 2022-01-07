
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int addr64_t ;


 int PHYSMAP_PTOV (int ) ;
 int bzero (int ,int ) ;

void
bzero_phys(
    addr64_t src64,
    uint32_t bytes)
{
 bzero(PHYSMAP_PTOV(src64), bytes);
}
