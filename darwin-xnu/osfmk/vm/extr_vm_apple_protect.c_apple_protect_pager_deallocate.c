
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_t ;
typedef int apple_protect_pager_t ;


 int FALSE ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int apple_protect_pager_deallocate_internal (int ,int ) ;
 int apple_protect_pager_lookup (int ) ;

void
apple_protect_pager_deallocate(
 memory_object_t mem_obj)
{
 apple_protect_pager_t pager;

 PAGER_DEBUG(PAGER_ALL, ("apple_protect_pager_deallocate: %p\n", mem_obj));
 pager = apple_protect_pager_lookup(mem_obj);
 apple_protect_pager_deallocate_internal(pager, FALSE);
}
