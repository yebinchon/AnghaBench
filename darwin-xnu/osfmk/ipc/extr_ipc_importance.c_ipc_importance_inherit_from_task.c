
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int uint32_t ;
typedef int task_t ;
typedef TYPE_3__* ipc_importance_task_t ;
typedef TYPE_4__* ipc_importance_inherit_t ;
typedef TYPE_5__* ipc_importance_elem_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_27__ {int iie_task_refs_inherited; } ;
struct TYPE_32__ {TYPE_1__ iit_elem; } ;
struct TYPE_31__ {int iie_kmsg_refs_dropped; int iie_kmsg_refs_coalesced; int iie_kmsg_refs_inherited; int iie_kmsg_refs_added; } ;
struct TYPE_30__ {scalar_t__ iii_donating; int iii_externcnt; int iii_bits; int iii_depth; int iii_elem; int iii_kmsgs; TYPE_5__* iii_from_elem; TYPE_3__* iii_to_task; scalar_t__ iii_externdrop; scalar_t__ iii_made; } ;
struct TYPE_28__ {int iie_task_refs_coalesced; int iie_task_refs_added_inherit_from; } ;
struct TYPE_29__ {int iit_externcnt; TYPE_2__ iit_elem; int iit_externdrop; } ;


 scalar_t__ FALSE ;
 TYPE_5__* IIE_NULL ;
 scalar_t__ IIE_REFS (TYPE_5__*) ;
 int IIE_TYPE_INHERIT ;
 scalar_t__ III_EXTERN (TYPE_4__*) ;
 TYPE_4__* III_NULL ;
 scalar_t__ III_REFS (TYPE_4__*) ;
 scalar_t__ III_REFS_MAX ;
 TYPE_3__* IIT_NULL ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int incr_ref_counter (int ) ;
 int ipc_importance_counter_init (int *) ;
 TYPE_3__* ipc_importance_for_task (int ,scalar_t__) ;
 TYPE_4__* ipc_importance_inherit_find (TYPE_5__*,TYPE_3__*,int) ;
 int ipc_importance_inherit_link (TYPE_4__*,TYPE_5__*) ;
 int ipc_importance_inherit_reference_internal (TYPE_4__*) ;
 int ipc_importance_inherit_zone ;
 int ipc_importance_lock () ;
 int ipc_importance_release_locked (TYPE_5__*) ;
 int ipc_importance_task_hold_internal_assertion_locked (TYPE_3__*,int) ;
 int ipc_importance_task_is_any_receiver_type (TYPE_3__*) ;
 scalar_t__ ipc_importance_task_is_donor (TYPE_3__*) ;
 int ipc_importance_task_release (TYPE_3__*) ;
 int ipc_importance_unlock () ;
 int queue_init (int *) ;
 TYPE_7__* task_imp ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,TYPE_4__*) ;

__attribute__((used)) static ipc_importance_inherit_t
ipc_importance_inherit_from_task(
 task_t from_task,
 task_t to_task)
{
 ipc_importance_task_t to_task_imp = IIT_NULL;
 ipc_importance_task_t from_task_imp = IIT_NULL;
 ipc_importance_elem_t from_elem = IIE_NULL;

 ipc_importance_inherit_t inherit = III_NULL;
 ipc_importance_inherit_t alloc = III_NULL;
 boolean_t donating;
 uint32_t depth = 1;

 to_task_imp = ipc_importance_for_task(to_task, FALSE);
 from_task_imp = ipc_importance_for_task(from_task, FALSE);
 from_elem = (ipc_importance_elem_t)from_task_imp;

 ipc_importance_lock();

 if (IIT_NULL == to_task_imp || IIT_NULL == from_task_imp) {
  goto out_locked;
 }





 if (!ipc_importance_task_is_any_receiver_type(to_task_imp) ||
     !ipc_importance_task_is_any_receiver_type(from_task_imp)) {
  goto out_locked;
 }


 if (to_task_imp == from_task_imp) {
  goto out_locked;
 }

 incr_ref_counter(to_task_imp->iit_elem.iie_task_refs_added_inherit_from);
 incr_ref_counter(from_elem->iie_kmsg_refs_added);





 while (III_NULL == inherit) {
  inherit = ipc_importance_inherit_find(from_elem, to_task_imp, depth);


  if (III_NULL == inherit) {
   if (III_NULL != alloc) {
    break;
   }


   ipc_importance_unlock();
   alloc = (ipc_importance_inherit_t)
    zalloc(ipc_importance_inherit_zone);
   ipc_importance_lock();
  }
 }


 donating = ipc_importance_task_is_donor(from_task_imp);

 if (III_NULL != inherit) {

  assert(0 < III_REFS(inherit));
  assert(0 < IIE_REFS(inherit->iii_from_elem));


  assert(III_REFS_MAX > III_REFS(inherit));
  ipc_importance_inherit_reference_internal(inherit);


  if (0 == III_EXTERN(inherit)) {
   assert(!inherit->iii_donating);
   inherit->iii_donating = donating;
   if (donating) {
    to_task_imp->iit_externcnt += inherit->iii_externcnt;
    to_task_imp->iit_externdrop += inherit->iii_externdrop;
   }
  } else {
   assert(donating == inherit->iii_donating);
  }


  inherit->iii_externcnt++;
 } else {

  inherit = alloc;
  inherit->iii_bits = IIE_TYPE_INHERIT | 1;
  inherit->iii_made = 0;
  inherit->iii_externcnt = 1;
  inherit->iii_externdrop = 0;
  inherit->iii_depth = depth;
  inherit->iii_to_task = to_task_imp;
  inherit->iii_from_elem = IIE_NULL;
  queue_init(&inherit->iii_kmsgs);

  if (donating) {
   inherit->iii_donating = TRUE;
  } else {
   inherit->iii_donating = FALSE;
  }





  ipc_importance_inherit_link(inherit, from_elem);






 }

out_locked:


 if (III_NULL != inherit && donating) {
  to_task_imp->iit_externcnt++;

  ipc_importance_task_hold_internal_assertion_locked(to_task_imp, 1);

 }


 if (III_NULL == inherit || inherit != alloc) {
  if (IIE_NULL != from_elem) {
   if (III_NULL != inherit) {
    incr_ref_counter(from_elem->iie_kmsg_refs_coalesced);
   } else {
    incr_ref_counter(from_elem->iie_kmsg_refs_dropped);
   }
   ipc_importance_release_locked(from_elem);

  } else {
   ipc_importance_unlock();
  }

  if (IIT_NULL != to_task_imp) {
   if (III_NULL != inherit) {
    incr_ref_counter(to_task_imp->iit_elem.iie_task_refs_coalesced);
   }
   ipc_importance_task_release(to_task_imp);
  }

  if (III_NULL != alloc) {
   zfree(ipc_importance_inherit_zone, alloc);
  }
 } else {

  ipc_importance_unlock();
 }

 return inherit;
}
