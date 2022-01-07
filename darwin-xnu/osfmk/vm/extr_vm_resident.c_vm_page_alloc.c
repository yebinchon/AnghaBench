
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef TYPE_1__* vm_object_t ;
typedef int vm_object_offset_t ;
struct TYPE_5__ {scalar_t__ can_grab_secluded; } ;


 int VM_PAGE_GRAB_SECLUDED ;
 scalar_t__ VM_PAGE_NULL ;
 int vm_object_lock_assert_exclusive (TYPE_1__*) ;
 scalar_t__ vm_page_grab_options (int) ;
 int vm_page_insert (scalar_t__,TYPE_1__*,int ) ;

vm_page_t
vm_page_alloc(
 vm_object_t object,
 vm_object_offset_t offset)
{
 vm_page_t mem;
 int grab_options;

 vm_object_lock_assert_exclusive(object);
 grab_options = 0;





 mem = vm_page_grab_options(grab_options);
 if (mem == VM_PAGE_NULL)
  return VM_PAGE_NULL;

 vm_page_insert(mem, object, offset);

 return(mem);
}
