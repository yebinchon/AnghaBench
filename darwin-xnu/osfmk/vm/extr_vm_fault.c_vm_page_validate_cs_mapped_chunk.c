
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
struct vnode {int dummy; } ;
typedef int * memory_object_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int code_signed; int pager_ready; int paging_in_progress; scalar_t__ paging_offset; int * pager; int internal; scalar_t__ terminating; int alive; } ;
struct TYPE_7__ {int vmp_busy; scalar_t__ vmp_offset; } ;


 scalar_t__ FALSE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ TRUE ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ cs_validate_range (struct vnode*,int *,scalar_t__,void const*,int ,unsigned int*) ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 struct vnode* vnode_pager_lookup_vnode (int *) ;

void
vm_page_validate_cs_mapped_chunk(
 vm_page_t page,
 const void *kaddr,
 vm_offset_t chunk_offset,
 vm_size_t chunk_size,
 boolean_t *validated_p,
 unsigned *tainted_p)
{
 vm_object_t object;
 vm_object_offset_t offset, offset_in_page;
 memory_object_t pager;
 struct vnode *vnode;
 boolean_t validated;
 unsigned tainted;

 *validated_p = FALSE;
 *tainted_p = 0;

 assert(page->vmp_busy);
 object = VM_PAGE_OBJECT(page);
 vm_object_lock_assert_exclusive(object);

 assert(object->code_signed);
 offset = page->vmp_offset;

 if (!object->alive || object->terminating || object->pager == ((void*)0)) {




  return;
 }





 assert(!object->internal);
 assert(object->pager != ((void*)0));
 assert(object->pager_ready);

 pager = object->pager;
 assert(object->paging_in_progress);
 vnode = vnode_pager_lookup_vnode(pager);


 offset_in_page = chunk_offset;
 assert(offset_in_page < PAGE_SIZE);

 tainted = 0;
 validated = cs_validate_range(vnode,
          pager,
          (object->paging_offset +
           offset +
           offset_in_page),
          (const void *)((const char *)kaddr
          + offset_in_page),
          chunk_size,
          &tainted);
 if (validated) {
  *validated_p = TRUE;
 }
 if (tainted) {
  *tainted_p = tainted;
 }
}
