
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_page_t ;
typedef int memory_object_return_t ;
typedef int memory_object_lock_result_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int vmp_fictitious; scalar_t__ vmp_error; scalar_t__ vmp_restart; scalar_t__ vmp_absent; scalar_t__ vmp_laundry; scalar_t__ vmp_cleaning; scalar_t__ vmp_busy; } ;


 int FALSE ;
 int MEMORY_OBJECT_LOCK_RESULT_DONE ;
 int MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK ;
 int MEMORY_OBJECT_LOCK_RESULT_MUST_FREE ;
 int MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN ;
 int SET_PAGE_DIRTY (TYPE_1__*,int ) ;
 int VM_MEM_MODIFIED ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 scalar_t__ VM_PAGE_WIRED (TYPE_1__*) ;
 int VM_PROT_ALL ;
 int VM_PROT_NO_CHANGE ;
 int XPR (int ,char*,TYPE_1__*,int ,scalar_t__,int,int ) ;
 int XPR_MEMORY_OBJECT ;
 int assert (int) ;
 scalar_t__ memory_object_should_return_page (TYPE_1__*,int ) ;
 int pmap_disconnect (int ) ;
 int pmap_page_protect (int ,int) ;
 int vm_pageout_steal_laundry (TYPE_1__*,int ) ;

memory_object_lock_result_t
memory_object_lock_page(
 vm_page_t m,
 memory_object_return_t should_return,
 boolean_t should_flush,
 vm_prot_t prot)
{
        XPR(XPR_MEMORY_OBJECT,
            "m_o_lock_page, page 0x%X rtn %d flush %d prot %d\n",
            m, should_return, should_flush, prot, 0);


 if (m->vmp_busy || m->vmp_cleaning)
  return (MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK);

 if (m->vmp_laundry)
  vm_pageout_steal_laundry(m, FALSE);





 if (m->vmp_absent || m->vmp_error || m->vmp_restart) {
  if (m->vmp_error && should_flush && !VM_PAGE_WIRED(m)) {





   return (MEMORY_OBJECT_LOCK_RESULT_MUST_FREE);
  }
  return (MEMORY_OBJECT_LOCK_RESULT_DONE);
 }
 assert(!m->vmp_fictitious);

 if (VM_PAGE_WIRED(m)) {




  if (memory_object_should_return_page(m, should_return))
   return (MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN);

  return (MEMORY_OBJECT_LOCK_RESULT_DONE);
 }

 if (should_flush) {






  if (pmap_disconnect(VM_PAGE_GET_PHYS_PAGE(m)) & VM_MEM_MODIFIED) {
   SET_PAGE_DIRTY(m, FALSE);
  }
 } else {





  if (prot != VM_PROT_NO_CHANGE)
   pmap_page_protect(VM_PAGE_GET_PHYS_PAGE(m), VM_PROT_ALL & ~prot);
 }



 if (memory_object_should_return_page(m, should_return)) {
  return (MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN);
 }




 if (should_flush)
  return (MEMORY_OBJECT_LOCK_RESULT_MUST_FREE);
 return (MEMORY_OBJECT_LOCK_RESULT_DONE);
}
