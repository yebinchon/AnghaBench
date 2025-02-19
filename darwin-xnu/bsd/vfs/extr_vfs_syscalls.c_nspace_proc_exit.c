
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc {int dummy; } ;
typedef int caddr_t ;
struct TYPE_7__ {struct proc* handler_proc; scalar_t__ handler_tid; } ;
struct TYPE_6__ {int flags; TYPE_1__* vp; scalar_t__ token; scalar_t__ vid; } ;
struct TYPE_5__ {int v_flag; } ;


 int MAX_NSPACE_ITEMS ;
 int NSPACE_HANDLER_COUNT ;
 int NSPACE_ITEM_DONE ;
 int NSPACE_ITEM_NEW ;
 int NSPACE_ITEM_PROCESSING ;
 int NSPACE_ITEM_SNAPSHOT_EVENT ;
 int VNEEDSSNAPSHOT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nspace_handler_lock ;
 TYPE_4__* nspace_handlers ;
 int nspace_item_flags_for_type (int) ;
 int nspace_item_idx ;
 TYPE_3__* nspace_items ;
 scalar_t__ snapshot_timestamp ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;
 int wakeup (int ) ;

void
nspace_proc_exit(struct proc *p)
{
 int i, event_mask = 0;

 for (i = 0; i < NSPACE_HANDLER_COUNT; i++) {
  if (p == nspace_handlers[i].handler_proc) {
   event_mask |= nspace_item_flags_for_type(i);
   nspace_handlers[i].handler_tid = 0;
   nspace_handlers[i].handler_proc = ((void*)0);
  }
 }

 if (event_mask == 0) {
  return;
 }

 lck_mtx_lock(&nspace_handler_lock);
 if (event_mask & NSPACE_ITEM_SNAPSHOT_EVENT) {

  snapshot_timestamp = 0;
 }




 for(i=0; i < MAX_NSPACE_ITEMS; i++) {
  if (nspace_items[i].flags & (NSPACE_ITEM_NEW | NSPACE_ITEM_PROCESSING)) {

   if ( nspace_items[i].flags & event_mask ) {

    if (nspace_items[i].vp && (nspace_items[i].vp->v_flag & VNEEDSSNAPSHOT)) {
     vnode_lock_spin(nspace_items[i].vp);
     nspace_items[i].vp->v_flag &= ~VNEEDSSNAPSHOT;
     vnode_unlock(nspace_items[i].vp);
    }
    nspace_items[i].vp = ((void*)0);
    nspace_items[i].vid = 0;
    nspace_items[i].flags = NSPACE_ITEM_DONE;
    nspace_items[i].token = 0;

    wakeup((caddr_t)&(nspace_items[i].vp));
   }
  }
 }

 wakeup((caddr_t)&nspace_item_idx);
 lck_mtx_unlock(&nspace_handler_lock);
}
