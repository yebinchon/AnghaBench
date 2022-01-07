
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t LOW_4GB_MASK ;
 int PAGE_SIZE ;
 uintptr_t VM_MIN_KERNEL_ADDRESS ;
 int bzero (int,int) ;
 int physfree ;

__attribute__((used)) static void *
ALLOCPAGES(int npages)
{
 uintptr_t tmp = (uintptr_t)physfree;
 bzero(physfree, npages * PAGE_SIZE);
 physfree += npages * PAGE_SIZE;
 tmp += VM_MIN_KERNEL_ADDRESS & ~LOW_4GB_MASK;
 return (void *)tmp;
}
