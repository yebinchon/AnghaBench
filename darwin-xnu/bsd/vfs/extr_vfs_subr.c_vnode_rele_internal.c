
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct uthread {TYPE_2__* uu_vreclaims; scalar_t__ uu_defer_reclaims; } ;
struct TYPE_16__ {scalar_t__ v_usecount; scalar_t__ v_type; int v_flag; scalar_t__ v_writecount; scalar_t__ v_kusecount; int v_iocount; int v_lflag; TYPE_1__* v_ubcinfo; struct TYPE_16__* v_defer_reclaimlist; int v_tag; int v_lock; } ;
struct TYPE_15__ {int ui_control; } ;


 scalar_t__ FALSE ;
 int FWRITE ;
 scalar_t__ ISSET (int,int) ;
 int LCK_MTX_ASSERT_OWNED ;
 int O_EVTONLY ;
 int VAGE ;
 int VISDIRTY ;
 int VL_DEAD ;
 int VL_MARKTERM ;
 int VL_NEEDINACTIVE ;
 int VL_TERMINATE ;
 int VNOCACHE_DATA ;
 int VNOP_INACTIVE (TYPE_2__*,int ) ;
 int VOPENEVT ;
 int VRAGE ;
 int VRAOFF ;
 scalar_t__ VREG ;
 int VSYSTEM ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int lck_mtx_assert (int *,int ) ;
 int memory_object_mark_unused (int ,int) ;
 int panic (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ;
 int record_vp (TYPE_2__*,int) ;
 int vfs_context_current () ;
 int vnode_async_list_add (TYPE_2__*) ;
 int vnode_dropiocount (TYPE_2__*) ;
 int vnode_list_add (TYPE_2__*) ;
 int vnode_lock_convert (TYPE_2__*) ;
 int vnode_lock_spin (TYPE_2__*) ;
 scalar_t__ vnode_on_reliable_media (TYPE_2__*) ;
 int vnode_reclaim_internal (TYPE_2__*,int,int,int ) ;
 int vnode_unlock (TYPE_2__*) ;

void
vnode_rele_internal(vnode_t vp, int fmode, int dont_reenter, int locked)
{

 if ( !locked)
         vnode_lock_spin(vp);




 if (--vp->v_usecount < 0)
  panic("vnode_rele_ext: vp %p usecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp, vp->v_usecount, vp->v_tag, vp->v_type, vp->v_flag);

 if (fmode & FWRITE) {
  if (--vp->v_writecount < 0)
   panic("vnode_rele_ext: vp %p writecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp, vp->v_writecount, vp->v_tag, vp->v_type, vp->v_flag);
 }
 if (fmode & O_EVTONLY) {
         if (--vp->v_kusecount < 0)
          panic("vnode_rele_ext: vp %p kusecount -ve : %d.  v_tag = %d, v_type = %d, v_flag = %x.", vp, vp->v_kusecount, vp->v_tag, vp->v_type, vp->v_flag);
 }
 if (vp->v_kusecount > vp->v_usecount)
  panic("vnode_rele_ext: vp %p kusecount(%d) out of balance with usecount(%d).  v_tag = %d, v_type = %d, v_flag = %x.",vp, vp->v_kusecount, vp->v_usecount, vp->v_tag, vp->v_type, vp->v_flag);

 if ((vp->v_iocount > 0) || (vp->v_usecount > 0)) {





  if (vp->v_usecount == 0) {
   vp->v_lflag |= VL_NEEDINACTIVE;
   vp->v_flag &= ~(VNOCACHE_DATA | VRAOFF | VOPENEVT);
  }
  goto done;
 }
 vp->v_flag &= ~(VNOCACHE_DATA | VRAOFF | VOPENEVT);

 if (ISSET(vp->v_lflag, VL_TERMINATE | VL_DEAD) || dont_reenter) {






  if (dont_reenter) {
   if ( !(vp->v_lflag & (VL_TERMINATE | VL_DEAD | VL_MARKTERM)) ) {
    vp->v_lflag |= VL_NEEDINACTIVE;

    if (vnode_on_reliable_media(vp) == FALSE || vp->v_flag & VISDIRTY) {
     vnode_async_list_add(vp);
     goto done;
    }
   }
   vp->v_flag |= VAGE;
  }
  vnode_list_add(vp);

  goto done;
 }






 vp->v_iocount++;



        vp->v_lflag &= ~VL_NEEDINACTIVE;
 vnode_unlock(vp);

 VNOP_INACTIVE(vp, vfs_context_current());

 vnode_lock_spin(vp);
 if ( (vp->v_iocount == 1) && (vp->v_usecount == 0) &&
      ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM)) {
         struct uthread *ut;

         ut = get_bsdthread_info(current_thread());

  if (ut->uu_defer_reclaims) {
          vp->v_defer_reclaimlist = ut->uu_vreclaims;
   ut->uu_vreclaims = vp;
   goto done;
  }
  vnode_lock_convert(vp);
         vnode_reclaim_internal(vp, 1, 1, 0);
 }
 vnode_dropiocount(vp);
 vnode_list_add(vp);
done:
 if (vp->v_usecount == 0 && vp->v_type == VREG && !(vp->v_flag & VSYSTEM)) {

  if (vp->v_ubcinfo) {
   vnode_lock_convert(vp);
   memory_object_mark_unused(vp->v_ubcinfo->ui_control, (vp->v_flag & VRAGE) == VRAGE);
  }
 }
 if ( !locked)
         vnode_unlock(vp);
 return;
}
