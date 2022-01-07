
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int memory_object_t ;
typedef TYPE_1__* apple_protect_pager_t ;
struct TYPE_3__ {scalar_t__ ref_count; } ;


 int apple_protect_pager_lock ;
 TYPE_1__* apple_protect_pager_lookup (int ) ;
 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
apple_protect_pager_reference(
 memory_object_t mem_obj)
{
 apple_protect_pager_t pager;

 pager = apple_protect_pager_lookup(mem_obj);

 lck_mtx_lock(&apple_protect_pager_lock);
 assert(pager->ref_count > 0);
 pager->ref_count++;
 lck_mtx_unlock(&apple_protect_pager_lock);
}
