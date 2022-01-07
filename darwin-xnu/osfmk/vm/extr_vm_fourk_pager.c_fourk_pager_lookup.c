
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* memory_object_t ;
typedef TYPE_2__* fourk_pager_t ;
struct TYPE_6__ {scalar_t__ ref_count; } ;
struct TYPE_5__ {int * mo_pager_ops; } ;


 int assert (int) ;
 int fourk_pager_ops ;

fourk_pager_t
fourk_pager_lookup(
 memory_object_t mem_obj)
{
 fourk_pager_t pager;

 assert(mem_obj->mo_pager_ops == &fourk_pager_ops);
 pager = (fourk_pager_t) mem_obj;
 assert(pager->ref_count > 0);
 return pager;
}
