
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uint32_t ;
typedef scalar_t__ addr64_t ;


 int NBPG ;
 void* PHYSMAP_PTOV (scalar_t__) ;
 int panic (char*) ;

int
apply_func_phys(
  addr64_t dst64,
  vm_size_t bytes,
  int (*func)(void * buffer, vm_size_t bytes, void * arg),
  void * arg)
{

 if (((((uint32_t)dst64 & (NBPG-1)) + bytes) > NBPG) ) {
         panic("apply_func_phys alignment");
 }

 return func(PHYSMAP_PTOV(dst64), bytes, arg);
}
