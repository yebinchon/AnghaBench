
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_object_t ;
typedef int vm_object_offset_t ;
struct vm_shared_region_slide_info {int dummy; } ;
typedef TYPE_1__* shared_region_pager_t ;
typedef int memory_object_t ;
struct TYPE_4__ {int is_ready; } ;


 int LCK_SLEEP_DEFAULT ;
 int MEMORY_OBJECT_NULL ;
 TYPE_1__* SHARED_REGION_PAGER_NULL ;
 int THREAD_UNINT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_sleep (int *,int ,int *,int ) ;
 int lck_mtx_unlock (int *) ;
 TYPE_1__* shared_region_pager_create (int ,int ,struct vm_shared_region_slide_info*) ;
 int shared_region_pager_lock ;

memory_object_t
shared_region_pager_setup(
 vm_object_t backing_object,
 vm_object_offset_t backing_offset,
 struct vm_shared_region_slide_info *slide_info)
{
 shared_region_pager_t pager;


 pager = shared_region_pager_create(
  backing_object,
  backing_offset,
  slide_info);
 if (pager == SHARED_REGION_PAGER_NULL) {

  return MEMORY_OBJECT_NULL;
 }

 lck_mtx_lock(&shared_region_pager_lock);
 while (!pager->is_ready) {
  lck_mtx_sleep(&shared_region_pager_lock,
   LCK_SLEEP_DEFAULT,
   &pager->is_ready,
   THREAD_UNINT);
 }
 lck_mtx_unlock(&shared_region_pager_lock);

 return (memory_object_t) pager;
}
