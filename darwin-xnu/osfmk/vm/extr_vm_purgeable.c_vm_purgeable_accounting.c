
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_purgable_t ;
typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int phys_footprint; } ;
struct TYPE_11__ {int ledger; } ;
struct TYPE_10__ {scalar_t__ purgable; int resident_page_count; int wired_page_count; int * pager; } ;


 scalar_t__ VM_CONFIG_COMPRESSOR_IS_PRESENT ;
 TYPE_2__* VM_OBJECT_OWNER (TYPE_1__*) ;
 scalar_t__ VM_PURGABLE_DENY ;
 int VM_PURGABLE_EMPTY ;
 int VM_PURGABLE_NONVOLATILE ;
 int VM_PURGABLE_VOLATILE ;
 int assert (int) ;
 int ledger_credit (int ,int,int ) ;
 int ledger_debit (int ,int,int ) ;
 int panic (char*,TYPE_1__*,int ) ;
 int ptoa_64 (int) ;
 TYPE_6__ task_ledgers ;
 int vm_compressor_pager_get_count (int *) ;
 int vm_object_ledger_tag_ledgers (TYPE_1__*,int*,int*,int*,int*,scalar_t__*) ;
 int vm_object_lock_assert_exclusive (TYPE_1__*) ;

void
vm_purgeable_accounting(
 vm_object_t object,
 vm_purgable_t old_state)
{
 task_t owner;
 int resident_page_count;
 int wired_page_count;
 int compressed_page_count;
 int ledger_idx_volatile;
 int ledger_idx_nonvolatile;
 int ledger_idx_volatile_compressed;
 int ledger_idx_nonvolatile_compressed;
 boolean_t do_footprint;

 vm_object_lock_assert_exclusive(object);
 assert(object->purgable != VM_PURGABLE_DENY);

 owner = VM_OBJECT_OWNER(object);
 if (owner == ((void*)0) ||
     object->purgable == VM_PURGABLE_DENY)
  return;

 vm_object_ledger_tag_ledgers(object,
         &ledger_idx_volatile,
         &ledger_idx_nonvolatile,
         &ledger_idx_volatile_compressed,
         &ledger_idx_nonvolatile_compressed,
         &do_footprint);

 resident_page_count = object->resident_page_count;
 wired_page_count = object->wired_page_count;
 if (VM_CONFIG_COMPRESSOR_IS_PRESENT &&
      object->pager != ((void*)0)) {
  compressed_page_count =
   vm_compressor_pager_get_count(object->pager);
 } else {
  compressed_page_count = 0;
 }

 if (old_state == VM_PURGABLE_VOLATILE ||
     old_state == VM_PURGABLE_EMPTY) {

  ledger_debit(owner->ledger,
        ledger_idx_volatile,
        ptoa_64(resident_page_count - wired_page_count));

  ledger_debit(owner->ledger,
        ledger_idx_volatile_compressed,
        ptoa_64(compressed_page_count));


  ledger_credit(owner->ledger,
         ledger_idx_nonvolatile,
         ptoa_64(resident_page_count - wired_page_count));

  ledger_credit(owner->ledger,
         ledger_idx_nonvolatile_compressed,
         ptoa_64(compressed_page_count));
  if (do_footprint) {

   ledger_credit(owner->ledger,
          task_ledgers.phys_footprint,
          ptoa_64(resident_page_count
        + compressed_page_count
        - wired_page_count));
  }

 } else if (old_state == VM_PURGABLE_NONVOLATILE) {


  ledger_debit(owner->ledger,
        ledger_idx_nonvolatile,
        ptoa_64(resident_page_count - wired_page_count));

  ledger_debit(owner->ledger,
        ledger_idx_nonvolatile_compressed,
        ptoa_64(compressed_page_count));
  if (do_footprint) {

   ledger_debit(owner->ledger,
         task_ledgers.phys_footprint,
         ptoa_64(resident_page_count
       + compressed_page_count
       - wired_page_count));
  }


  ledger_credit(owner->ledger,
         ledger_idx_volatile,
         ptoa_64(resident_page_count - wired_page_count));

  ledger_credit(owner->ledger,
         ledger_idx_volatile_compressed,
         ptoa_64(compressed_page_count));
 } else {
  panic("vm_purgeable_accounting(%p): "
        "unexpected old_state=%d\n",
        object, old_state);
 }

 vm_object_lock_assert_exclusive(object);
}
