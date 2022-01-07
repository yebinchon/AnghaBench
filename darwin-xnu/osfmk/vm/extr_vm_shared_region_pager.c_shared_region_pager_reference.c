
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* shared_region_pager_t ;
typedef int memory_object_t ;
struct TYPE_3__ {scalar_t__ ref_count; } ;


 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int shared_region_pager_lock ;
 TYPE_1__* shared_region_pager_lookup (int ) ;

void
shared_region_pager_reference(
 memory_object_t mem_obj)
{
 shared_region_pager_t pager;

 pager = shared_region_pager_lookup(mem_obj);

 lck_mtx_lock(&shared_region_pager_lock);
 assert(pager->ref_count > 0);
 pager->ref_count++;
 lck_mtx_unlock(&shared_region_pager_lock);
}
