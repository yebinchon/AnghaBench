
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ppnum_t ;
typedef int pmap_paddr_t ;
typedef int boolean_t ;


 int assert (int) ;
 int pa_test_bits (int ,unsigned int) ;
 int ptoa (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;

__attribute__((used)) static boolean_t
phys_attribute_test(
 ppnum_t pn,
 unsigned int bits)
{
 pmap_paddr_t pa = ptoa(pn);
 assert(pn != vm_page_fictitious_addr);
 return pa_test_bits(pa, bits);
}
