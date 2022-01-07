
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* swapfile_pager_t ;
typedef TYPE_2__* memory_object_t ;
struct TYPE_7__ {int * mo_pager_ops; } ;
struct TYPE_6__ {scalar_t__ ref_count; } ;


 int __IGNORE_WCASTALIGN (TYPE_1__*) ;
 int assert (int) ;
 int swapfile_pager_ops ;

swapfile_pager_t
swapfile_pager_lookup(
 memory_object_t mem_obj)
{
 swapfile_pager_t pager;

 assert(mem_obj->mo_pager_ops == &swapfile_pager_ops);
 __IGNORE_WCASTALIGN(pager = (swapfile_pager_t) mem_obj);
 assert(pager->ref_count > 0);
 return pager;
}
