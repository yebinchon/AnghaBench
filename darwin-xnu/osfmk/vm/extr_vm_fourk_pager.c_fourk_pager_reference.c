
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int memory_object_t ;
typedef TYPE_1__* fourk_pager_t ;
struct TYPE_3__ {scalar_t__ ref_count; } ;


 int assert (int) ;
 int fourk_pager_lock ;
 TYPE_1__* fourk_pager_lookup (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
fourk_pager_reference(
 memory_object_t mem_obj)
{
 fourk_pager_t pager;

 pager = fourk_pager_lookup(mem_obj);

 lck_mtx_lock(&fourk_pager_lock);
 assert(pager->ref_count > 0);
 pager->ref_count++;
 lck_mtx_unlock(&fourk_pager_lock);
}
