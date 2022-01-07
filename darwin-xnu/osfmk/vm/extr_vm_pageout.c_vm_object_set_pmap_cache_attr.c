
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int upl_page_info_array_t ;
typedef int boolean_t ;
struct TYPE_4__ {unsigned int wimg_bits; } ;


 int PMAP_BATCH_SET_CACHE_ATTR (TYPE_1__*,int ,unsigned int,unsigned int,int ) ;
 unsigned int VM_WIMG_MASK ;
 unsigned int VM_WIMG_USE_DEFAULT ;
 int assert (int ) ;

void
vm_object_set_pmap_cache_attr(
  vm_object_t object,
  upl_page_info_array_t user_page_list,
  unsigned int num_pages,
  boolean_t batch_pmap_op)
{
 unsigned int cache_attr = 0;

 cache_attr = object->wimg_bits & VM_WIMG_MASK;
 assert(user_page_list);
 if (cache_attr != VM_WIMG_USE_DEFAULT) {
  PMAP_BATCH_SET_CACHE_ATTR(object, user_page_list, cache_attr, num_pages, batch_pmap_op);
 }
}
