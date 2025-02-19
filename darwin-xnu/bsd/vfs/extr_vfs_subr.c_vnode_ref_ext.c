
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct uthread {int uu_flag; } ;
struct TYPE_11__ {int p_lflag; } ;
struct TYPE_10__ {scalar_t__ v_iocount; int v_usecount; int v_lflag; scalar_t__ v_owner; scalar_t__ v_writecount; scalar_t__ v_kusecount; int v_flag; scalar_t__ v_type; TYPE_1__* v_ubcinfo; scalar_t__ v_references; } ;
struct TYPE_9__ {int ui_control; } ;


 int ENOENT ;
 int FWRITE ;
 int O_EVTONLY ;
 int P_LRAGE_VNODES ;
 int UT_RAGE_VNODES ;
 int VL_DEAD ;
 int VL_DRAIN ;
 int VL_TERMINATE ;
 int VNODE_REF_FORCE ;
 int VRAGE ;
 scalar_t__ VREG ;
 int VSYSTEM ;
 TYPE_8__* current_proc () ;
 scalar_t__ current_thread () ;
 struct uthread* get_bsdthread_info (scalar_t__) ;
 int memory_object_mark_used (int ) ;
 int panic (char*,...) ;
 int vnode_list_remove (TYPE_2__*) ;
 int vnode_lock_convert (TYPE_2__*) ;
 int vnode_lock_spin (TYPE_2__*) ;
 int vnode_unlock (TYPE_2__*) ;

int
vnode_ref_ext(vnode_t vp, int fmode, int flags)
{
 int error = 0;

 vnode_lock_spin(vp);






 if (vp->v_iocount <= 0 && vp->v_usecount <= 0)
  panic("vnode_ref_ext: vp %p has no valid reference %d, %d", vp, vp->v_iocount, vp->v_usecount);




 if ((flags & VNODE_REF_FORCE) == 0) {
  if ((vp->v_lflag & (VL_DRAIN | VL_TERMINATE | VL_DEAD))) {
   if (vp->v_owner != current_thread()) {
    error = ENOENT;
    goto out;
   }
  }
 }
 vp->v_usecount++;

 if (fmode & FWRITE) {
         if (++vp->v_writecount <= 0)
          panic("vnode_ref_ext: v_writecount");
 }
 if (fmode & O_EVTONLY) {
         if (++vp->v_kusecount <= 0)
          panic("vnode_ref_ext: v_kusecount");
 }
 if (vp->v_flag & VRAGE) {
         struct uthread *ut;

         ut = get_bsdthread_info(current_thread());

         if ( !(current_proc()->p_lflag & P_LRAGE_VNODES) &&
       !(ut->uu_flag & UT_RAGE_VNODES)) {
   vp->v_flag &= ~VRAGE;
   vp->v_references = 0;
   vnode_list_remove(vp);
  }
 }
 if (vp->v_usecount == 1 && vp->v_type == VREG && !(vp->v_flag & VSYSTEM)) {

  if (vp->v_ubcinfo) {
   vnode_lock_convert(vp);
   memory_object_mark_used(vp->v_ubcinfo->ui_control);
  }
 }
out:
 vnode_unlock(vp);

 return (error);
}
