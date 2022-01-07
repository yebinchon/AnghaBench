
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef void* caddr_t ;
struct TYPE_2__ {scalar_t__ debug; scalar_t__ active; } ;


 TYPE_1__* PROFILE_VARS (int ) ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,scalar_t__*,size_t) ;
 int memset (void*,char,size_t) ;
 int panic (char*) ;
 int printf (char*,int,int) ;

void *
_profile_alloc_pages (size_t size)
{
 vm_offset_t addr;







 if (PROFILE_VARS(0)->active) {
  panic("Call to _profile_alloc_pages while profiling is running.");
 }

 if (kmem_alloc(kernel_map, &addr, size)) {
  panic("Could not allocate memory for profiling");
 }

 memset((void *)addr, '\0', size);
 if (PROFILE_VARS(0)->debug) {
  printf("Allocated %d bytes for profiling, address 0x%x\n", (int)size, (int)addr);
 }

 return((caddr_t)addr);
}
