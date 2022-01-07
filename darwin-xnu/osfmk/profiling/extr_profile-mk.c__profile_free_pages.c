
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {scalar_t__ debug; } ;


 TYPE_1__* PROFILE_VARS (int ) ;
 int kernel_map ;
 int kmem_free (int ,int ,size_t) ;
 int printf (char*,int,int) ;

void
_profile_free_pages(void *addr, size_t size)
{
 if (PROFILE_VARS(0)->debug) {
  printf("Freed %d bytes for profiling, address 0x%x\n", (int)size, (int)addr);
 }

 kmem_free(kernel_map, (vm_offset_t)addr, size);
 return;
}
