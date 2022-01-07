
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int vm_map_size_t ;
typedef TYPE_1__* vm_map_copy_t ;
typedef int boolean_t ;
struct TYPE_4__ {int type; int size; } ;


 int FALSE ;
 int TRUE ;


 TYPE_1__* VM_MAP_COPY_NULL ;

 int VM_MAP_PAGE_MASK (int ) ;
 int vm_map_round_page (int ,int ) ;

boolean_t
vm_map_copy_validate_size(
 vm_map_t dst_map,
 vm_map_copy_t copy,
 vm_map_size_t *size)
{
 if (copy == VM_MAP_COPY_NULL)
  return FALSE;
 vm_map_size_t copy_sz = copy->size;
 vm_map_size_t sz = *size;
 switch (copy->type) {
 case 128:
 case 129:
  if (sz == copy_sz)
   return TRUE;
  break;
 case 130:





  if (copy_sz >= sz &&
      copy_sz <= vm_map_round_page(sz, VM_MAP_PAGE_MASK(dst_map))) {
   *size = copy_sz;
   return TRUE;
  }
  break;
 default:
  break;
 }
 return FALSE;
}
