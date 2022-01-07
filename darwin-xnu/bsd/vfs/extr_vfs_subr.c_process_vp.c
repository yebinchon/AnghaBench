
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_17__ {scalar_t__ tqe_prev; scalar_t__ tqe_next; } ;
struct TYPE_18__ {unsigned int v_id; scalar_t__ v_usecount; scalar_t__ v_iocount; int v_lflag; scalar_t__ v_type; int v_flag; int v_ncchildren; int v_nclinks; TYPE_1__ v_mntvnodes; scalar_t__ v_kusecount; } ;


 scalar_t__ FALSE ;
 int LIST_EMPTY (int *) ;
 TYPE_2__* NULLVP ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ VBAD ;
 int VISDIRTY ;
 int VL_DEAD ;
 int VL_MARKTERM ;
 int VL_NEEDINACTIVE ;
 int VL_TERMINATE ;
 int VNAMED_FSHASH ;
 int VNAMED_MOUNT ;
 int VNAMED_UBC ;
 scalar_t__ VONLIST (TYPE_2__*) ;
 int panic (char*,TYPE_2__*) ;
 int record_vp (TYPE_2__*,int) ;
 int vnode_async_list_add (TYPE_2__*) ;
 int vnode_list_remove_locked (TYPE_2__*) ;
 int vnode_list_unlock () ;
 int vnode_lock_convert (TYPE_2__*) ;
 int vnode_lock_spin (TYPE_2__*) ;
 scalar_t__ vnode_on_reliable_media (TYPE_2__*) ;
 int vnode_put_locked (TYPE_2__*) ;
 int vnode_reclaim_internal (TYPE_2__*,int,int,int ) ;
 int vnode_unlock (TYPE_2__*) ;

__attribute__((used)) static vnode_t
process_vp(vnode_t vp, int want_vp, int *deferred)
{
 unsigned int vpid;

 *deferred = 0;

 vpid = vp->v_id;

 vnode_list_remove_locked(vp);

 vnode_list_unlock();

 vnode_lock_spin(vp);






 if ((vpid != vp->v_id) || (vp->v_usecount != 0) || (vp->v_iocount != 0) ||
     VONLIST(vp) || (vp->v_lflag & VL_TERMINATE)) {





  vnode_unlock(vp);

  return (NULLVP);
 }
 if ( (vp->v_lflag & (VL_NEEDINACTIVE | VL_MARKTERM)) == VL_NEEDINACTIVE ) {
         vp->v_iocount++;



  vnode_put_locked(vp);
  vnode_unlock(vp);

  return (NULLVP);
 }



 if (vp->v_type != VBAD) {
  if (want_vp && (vnode_on_reliable_media(vp) == FALSE || (vp->v_flag & VISDIRTY))) {
   vnode_async_list_add(vp);
   vnode_unlock(vp);

   *deferred = 1;

   return (NULLVP);
  }
  if (vp->v_lflag & VL_DEAD)
   panic("new_vnode(%p): the vnode is VL_DEAD but not VBAD", vp);

  vnode_lock_convert(vp);
  (void)vnode_reclaim_internal(vp, 1, want_vp, 0);

  if (want_vp) {
   if ((VONLIST(vp)))
    panic("new_vnode(%p): vp on list", vp);
   if (vp->v_usecount || vp->v_iocount || vp->v_kusecount ||
       (vp->v_lflag & (VNAMED_UBC | VNAMED_MOUNT | VNAMED_FSHASH)))
    panic("new_vnode(%p): free vnode still referenced", vp);
   if ((vp->v_mntvnodes.tqe_prev != 0) && (vp->v_mntvnodes.tqe_next != 0))
    panic("new_vnode(%p): vnode seems to be on mount list", vp);
   if ( !LIST_EMPTY(&vp->v_nclinks) || !TAILQ_EMPTY(&vp->v_ncchildren))
    panic("new_vnode(%p): vnode still hooked into the name cache", vp);
  } else {
   vnode_unlock(vp);
   vp = NULLVP;
  }
 }
 return (vp);
}
