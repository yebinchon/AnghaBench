
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int addr64_t ;


 int bcopy_phys_internal (int ,int ,int ,int) ;
 int cppvPsnk ;
 int cppvPsrc ;

void
bcopy_phys(addr64_t src, addr64_t dst, vm_size_t bytes)
{
 bcopy_phys_internal(src, dst, bytes, cppvPsrc | cppvPsnk);
}
