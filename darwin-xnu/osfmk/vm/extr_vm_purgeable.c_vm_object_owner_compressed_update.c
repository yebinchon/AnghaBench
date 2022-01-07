
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* task_t ;
typedef int boolean_t ;
struct TYPE_12__ {int phys_footprint; } ;
struct TYPE_11__ {int ledger; } ;
struct TYPE_10__ {int purgable; int vo_ledger_tag; int internal; } ;


 int VM_OBJECT_LEDGER_TAG_NONE ;
 TYPE_2__* VM_OBJECT_OWNER (TYPE_1__*) ;




 int assert (int) ;
 int ledger_credit (int ,int,int ) ;
 int ledger_debit (int ,int,int ) ;
 int panic (char*,int,TYPE_1__*) ;
 int ptoa_64 (int) ;
 TYPE_6__ task_ledgers ;
 int vm_object_ledger_tag_ledgers (TYPE_1__*,int*,int*,int*,int*,int *) ;
 int vm_object_lock_assert_exclusive (TYPE_1__*) ;

void
vm_object_owner_compressed_update(
 vm_object_t object,
 int delta)
{
 task_t owner;
 int ledger_idx_volatile;
 int ledger_idx_nonvolatile;
 int ledger_idx_volatile_compressed;
 int ledger_idx_nonvolatile_compressed;
 boolean_t do_footprint;

 vm_object_lock_assert_exclusive(object);

 owner = VM_OBJECT_OWNER(object);

 if (delta == 0 ||
     !object->internal ||
     (object->purgable == 131 &&
      ! object->vo_ledger_tag) ||
     owner == ((void*)0)) {

  return;
 }

 vm_object_ledger_tag_ledgers(object,
         &ledger_idx_volatile,
         &ledger_idx_nonvolatile,
         &ledger_idx_volatile_compressed,
         &ledger_idx_nonvolatile_compressed,
         &do_footprint);
 switch (object->purgable) {
 case 131:

  assert(object->vo_ledger_tag != VM_OBJECT_LEDGER_TAG_NONE);

 case 129:
  if (delta > 0) {
   ledger_credit(owner->ledger,
          ledger_idx_nonvolatile_compressed,
          ptoa_64(delta));
   if (do_footprint) {
    ledger_credit(owner->ledger,
           task_ledgers.phys_footprint,
           ptoa_64(delta));
   }
  } else {
   ledger_debit(owner->ledger,
         ledger_idx_nonvolatile_compressed,
         ptoa_64(-delta));
   if (do_footprint) {
    ledger_debit(owner->ledger,
          task_ledgers.phys_footprint,
          ptoa_64(-delta));
   }
  }
  break;
 case 128:
 case 130:
  if (delta > 0) {
   ledger_credit(owner->ledger,
          ledger_idx_volatile_compressed,
          ptoa_64(delta));
  } else {
   ledger_debit(owner->ledger,
         ledger_idx_volatile_compressed,
         ptoa_64(-delta));
  }
  break;
 default:
  panic("vm_purgeable_compressed_update(): "
        "unexpected purgable %d for object %p\n",
        object->purgable, object);
 }
}
