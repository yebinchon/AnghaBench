
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ AVAILABLE_NON_COMPRESSED_MEMORY ;
 int PAGE_SIZE_64 ;

uint64_t
vm_available_memory(void)
{
 return (((uint64_t)AVAILABLE_NON_COMPRESSED_MEMORY) * PAGE_SIZE_64);
}
