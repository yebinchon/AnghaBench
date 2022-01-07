
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_t ;
typedef int fourk_pager_t ;


 int FALSE ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int fourk_pager_deallocate_internal (int ,int ) ;
 int fourk_pager_lookup (int ) ;

void
fourk_pager_deallocate(
 memory_object_t mem_obj)
{
 fourk_pager_t pager;

 PAGER_DEBUG(PAGER_ALL, ("fourk_pager_deallocate: %p\n", mem_obj));
 pager = fourk_pager_lookup(mem_obj);
 fourk_pager_deallocate_internal(pager, FALSE);
}
