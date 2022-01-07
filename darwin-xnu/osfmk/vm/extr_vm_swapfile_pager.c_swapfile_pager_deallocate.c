
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swapfile_pager_t ;
typedef int memory_object_t ;


 int FALSE ;
 int PAGER_ALL ;
 int PAGER_DEBUG (int ,char*) ;
 int swapfile_pager_deallocate_internal (int ,int ) ;
 int swapfile_pager_lookup (int ) ;

void
swapfile_pager_deallocate(
 memory_object_t mem_obj)
{
 swapfile_pager_t pager;

 PAGER_DEBUG(PAGER_ALL, ("swapfile_pager_deallocate: %p\n", mem_obj));
 pager = swapfile_pager_lookup(mem_obj);
 swapfile_pager_deallocate_internal(pager, FALSE);
}
