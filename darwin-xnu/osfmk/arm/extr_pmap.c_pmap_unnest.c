
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pmap_t ;
typedef int kern_return_t ;
typedef int addr64_t ;


 int pmap_unnest_options (int ,int ,int ,int ) ;

kern_return_t
pmap_unnest(
 pmap_t grand,
 addr64_t vaddr,
 uint64_t size)
{
 return(pmap_unnest_options(grand, vaddr, size, 0));
}
