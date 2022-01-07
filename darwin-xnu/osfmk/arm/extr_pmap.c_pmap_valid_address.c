
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;
typedef int boolean_t ;


 int pa_valid (int ) ;

boolean_t
pmap_valid_address(
 pmap_paddr_t addr)
{
 return pa_valid(addr);
}
