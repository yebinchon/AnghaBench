
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef scalar_t__ memory_object_t ;
struct TYPE_15__ {int internal; scalar_t__ pager; scalar_t__ paging_offset; } ;
struct TYPE_14__ {int vmp_busy; int vmp_dirty; int vmp_precious; scalar_t__ vmp_restart; scalar_t__ vmp_error; scalar_t__ vmp_absent; scalar_t__ vmp_offset; } ;


 int FALSE ;
 scalar_t__ MEMORY_OBJECT_NULL ;
 int PAGE_SIZE ;
 int SET_PAGE_DIRTY (TYPE_1__*,int ) ;
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ;
 int VM_PAGE_FREE (TYPE_1__*) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 int XPR (int ,char*,TYPE_1__*,int ,int ,int ,int ) ;
 int XPR_VM_PAGEOUT ;
 int assert (int) ;
 int memory_object_data_initialize (scalar_t__,scalar_t__,int ) ;
 int panic (char*) ;
 int pmap_clear_modify (int ) ;
 int vm_object_lock (TYPE_2__*) ;
 int vm_object_paging_begin (TYPE_2__*) ;
 int vm_object_paging_end (TYPE_2__*) ;
 int vm_object_unlock (TYPE_2__*) ;

void
vm_pageout_initialize_page(
 vm_page_t m)
{
 vm_object_t object;
 vm_object_offset_t paging_offset;
 memory_object_t pager;

 XPR(XPR_VM_PAGEOUT,
  "vm_pageout_initialize_page, page 0x%X\n",
  m, 0, 0, 0, 0);

 assert(VM_CONFIG_COMPRESSOR_IS_PRESENT);

 object = VM_PAGE_OBJECT(m);

 assert(m->vmp_busy);
 assert(object->internal);




 assert(!m->vmp_absent);
 assert(!m->vmp_error);
 assert(m->vmp_dirty);




 paging_offset = m->vmp_offset + object->paging_offset;

 if (m->vmp_absent || m->vmp_error || m->vmp_restart || (!m->vmp_dirty && !m->vmp_precious)) {
  panic("reservation without pageout?");

  VM_PAGE_FREE(m);
  vm_object_unlock(object);

  return;
 }







 pager = object->pager;

 if (pager == MEMORY_OBJECT_NULL) {
  panic("missing pager for copy object");

  VM_PAGE_FREE(m);
  return;
 }




 pmap_clear_modify(VM_PAGE_GET_PHYS_PAGE(m));
 SET_PAGE_DIRTY(m, FALSE);




 vm_object_paging_begin(object);
 vm_object_unlock(object);
 memory_object_data_initialize(pager, paging_offset, PAGE_SIZE);

 vm_object_lock(object);
 vm_object_paging_end(object);
}
