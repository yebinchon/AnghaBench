
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_23__ {int phys_footprint; } ;
struct TYPE_22__ {int ledger; } ;
struct TYPE_21__ {scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ purgable; scalar_t__ vo_owner; int wire_tag; } ;
struct TYPE_20__ {scalar_t__ vmp_q_state; scalar_t__ vmp_wire_count; int vmp_fictitious; int vmp_private; scalar_t__ vmp_gobbled; scalar_t__ vmp_laundry; int vmp_cleaning; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int OSAddAtomic (int,scalar_t__*) ;
 int PAGE_SIZE ;
 scalar_t__ TASK_NULL ;
 int TRUE ;
 TYPE_3__* VM_OBJECT_OWNER (TYPE_2__*) ;
 int VM_OBJECT_WIRED_PAGE_REMOVE (TYPE_2__*,TYPE_1__*) ;
 int VM_OBJECT_WIRED_PAGE_UPDATE_END (TYPE_2__*,int ) ;
 int VM_OBJECT_WIRED_PAGE_UPDATE_START (TYPE_2__*) ;
 int VM_PAGE_CHECK (TYPE_1__*) ;
 scalar_t__ VM_PAGE_NOT_ON_Q ;
 TYPE_2__* VM_PAGE_OBJECT (TYPE_1__*) ;
 scalar_t__ VM_PAGE_ON_FREE_Q ;
 scalar_t__ VM_PAGE_WIRED (TYPE_1__*) ;
 scalar_t__ VM_PURGABLE_EMPTY ;
 scalar_t__ VM_PURGABLE_VOLATILE ;
 int assert (int) ;
 int c_laundry_pages_freed ;
 int counter (int ) ;
 int ledger_credit (int ,int,int ) ;
 int ledger_debit (int ,int,int ) ;
 TYPE_9__ task_ledgers ;
 int vm_object_ledger_tag_ledgers (TYPE_2__*,int*,int*,int*,int*,scalar_t__*) ;
 int vm_object_lock_assert_exclusive (TYPE_2__*) ;
 int vm_page_gobble_count ;
 scalar_t__ vm_page_purgeable_count ;
 scalar_t__ vm_page_purgeable_wired_count ;
 int vm_page_queue_lock ;
 int vm_page_queues_remove (TYPE_1__*,int ) ;
 int vm_page_wire_count ;
 int vm_pageout_steal_laundry (TYPE_1__*,int ) ;

void
vm_page_free_prepare_queues(
 vm_page_t mem)
{
 vm_object_t m_object;

 VM_PAGE_CHECK(mem);

 assert(mem->vmp_q_state != VM_PAGE_ON_FREE_Q);
 assert(!mem->vmp_cleaning);
 m_object = VM_PAGE_OBJECT(mem);

 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
 if (m_object) {
  vm_object_lock_assert_exclusive(m_object);
 }
 if (mem->vmp_laundry) {







  vm_pageout_steal_laundry(mem, TRUE);
  counter(++c_laundry_pages_freed);
 }

 vm_page_queues_remove(mem, TRUE);

 if (VM_PAGE_WIRED(mem)) {
  assert(mem->vmp_wire_count > 0);

  if (m_object) {

   VM_OBJECT_WIRED_PAGE_UPDATE_START(m_object);
   VM_OBJECT_WIRED_PAGE_REMOVE(m_object, mem);
   VM_OBJECT_WIRED_PAGE_UPDATE_END(m_object, m_object->wire_tag);

   assert(m_object->resident_page_count >=
          m_object->wired_page_count);

   if (m_object->purgable == VM_PURGABLE_VOLATILE) {
    OSAddAtomic(+1, &vm_page_purgeable_count);
    assert(vm_page_purgeable_wired_count > 0);
    OSAddAtomic(-1, &vm_page_purgeable_wired_count);
   }
   if ((m_object->purgable == VM_PURGABLE_VOLATILE ||
        m_object->purgable == VM_PURGABLE_EMPTY) &&
       m_object->vo_owner != TASK_NULL) {
    task_t owner;
    int ledger_idx_volatile;
    int ledger_idx_nonvolatile;
    int ledger_idx_volatile_compressed;
    int ledger_idx_nonvolatile_compressed;
    boolean_t do_footprint;

    owner = VM_OBJECT_OWNER(m_object);
    vm_object_ledger_tag_ledgers(
     m_object,
     &ledger_idx_volatile,
     &ledger_idx_nonvolatile,
     &ledger_idx_volatile_compressed,
     &ledger_idx_nonvolatile_compressed,
     &do_footprint);






    ledger_debit(owner->ledger,
          ledger_idx_nonvolatile,
          PAGE_SIZE);
    if (do_footprint) {

     ledger_debit(owner->ledger,
           task_ledgers.phys_footprint,
           PAGE_SIZE);
    }

    ledger_credit(owner->ledger,
           ledger_idx_volatile,
           PAGE_SIZE);
   }
  }
  if (!mem->vmp_private && !mem->vmp_fictitious)
   vm_page_wire_count--;

  mem->vmp_q_state = VM_PAGE_NOT_ON_Q;
  mem->vmp_wire_count = 0;
  assert(!mem->vmp_gobbled);
 } else if (mem->vmp_gobbled) {
  if (!mem->vmp_private && !mem->vmp_fictitious)
   vm_page_wire_count--;
  vm_page_gobble_count--;
 }
}
