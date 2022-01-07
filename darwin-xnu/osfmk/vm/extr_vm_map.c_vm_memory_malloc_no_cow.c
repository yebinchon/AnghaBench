
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int vm_memory_malloc_no_cow_mask ;

__attribute__((used)) static boolean_t
vm_memory_malloc_no_cow(
 int alias)
{
 uint64_t alias_mask;

 alias_mask = 1ULL << alias;
 if (alias_mask & vm_memory_malloc_no_cow_mask) {
  return TRUE;
 }
 return FALSE;
}
