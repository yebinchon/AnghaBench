
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* shared_region_pager_t ;
typedef TYPE_2__* memory_object_t ;
struct TYPE_6__ {int * mo_pager_ops; } ;
struct TYPE_5__ {scalar_t__ ref_count; } ;


 int assert (int) ;
 int shared_region_pager_ops ;

shared_region_pager_t
shared_region_pager_lookup(
 memory_object_t mem_obj)
{
 shared_region_pager_t pager;

 assert(mem_obj->mo_pager_ops == &shared_region_pager_ops);
 pager = (shared_region_pager_t)(uintptr_t) mem_obj;
 assert(pager->ref_count > 0);
 return pager;
}
