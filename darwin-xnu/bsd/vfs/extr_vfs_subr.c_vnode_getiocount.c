
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int errno_t ;
struct TYPE_7__ {int v_lflag; scalar_t__ v_type; scalar_t__ v_data; scalar_t__ v_owner; int v_iocount; unsigned int v_id; scalar_t__ v_references; int v_flag; int v_lock; scalar_t__ v_mount; } ;


 int ENODEV ;
 int ENOENT ;
 int PCATCH ;
 int PVFS ;
 scalar_t__ UNAGE_DIRTYTHRESHHOLD ;
 scalar_t__ UNAGE_THRESHHOLD ;
 scalar_t__ VBAD ;
 int VISDIRTY ;
 int VL_DEAD ;
 int VL_DRAIN ;
 int VL_SUSPENDED ;
 int VL_TERMINATE ;
 int VL_TERMWANT ;
 int VNODE_ALWAYS ;
 int VNODE_DRAINO ;
 int VNODE_NODEAD ;
 int VNODE_NOSUSPEND ;
 int VNODE_WITHID ;
 scalar_t__ current_thread () ;
 int msleep (int*,int *,int,char*,int *) ;
 int record_vp (TYPE_1__*,int) ;
 scalar_t__ vfs_isunmount (scalar_t__) ;
 scalar_t__ vnode_istty (TYPE_1__*) ;
 int vnode_list_remove (TYPE_1__*) ;
 int vnode_lock_convert (TYPE_1__*) ;

errno_t
vnode_getiocount(vnode_t vp, unsigned int vid, int vflags)
{
 int nodead = vflags & VNODE_NODEAD;
 int nosusp = vflags & VNODE_NOSUSPEND;
 int always = vflags & VNODE_ALWAYS;
 int beatdrain = vflags & VNODE_DRAINO;
 int withvid = vflags & VNODE_WITHID;

 for (;;) {
  int sleepflg = 0;




         if (nodead && (vp->v_lflag & VL_DEAD) && ((vp->v_type == VBAD) || (vp->v_data == 0))) {
   return(ENOENT);
  }



  if ((vp->v_lflag & (VL_SUSPENDED | VL_DRAIN | VL_TERMINATE)) == 0 ) {
   break;
  }



  if (nosusp && (vp->v_lflag & VL_SUSPENDED)) {
   return(ENOENT);
  }




  if ((vp->v_lflag & (VL_DRAIN | VL_SUSPENDED | VL_TERMINATE)) &&
      (vp->v_owner == current_thread())) {
          break;
  }

  if (always != 0)
   break;






  if (vp->v_lflag & VL_DRAIN) {







   if (beatdrain)
    break;
   if (withvid && (vp->v_mount) && vfs_isunmount(vp->v_mount))
    return (ENODEV);

   if (vnode_istty(vp)) {
    sleepflg = PCATCH;
   }
  }

  vnode_lock_convert(vp);

  if (vp->v_lflag & VL_TERMINATE) {
   int error;

   vp->v_lflag |= VL_TERMWANT;

   error = msleep(&vp->v_lflag, &vp->v_lock,
      (PVFS | sleepflg), "vnode getiocount", ((void*)0));
   if (error)
    return (error);
  } else
   msleep(&vp->v_iocount, &vp->v_lock, PVFS, "vnode_getiocount", ((void*)0));
 }
 if (withvid && vid != vp->v_id) {
  return(ENOENT);
 }
 if (++vp->v_references >= UNAGE_THRESHHOLD ||
     (vp->v_flag & VISDIRTY && vp->v_references >= UNAGE_DIRTYTHRESHHOLD)) {
         vp->v_references = 0;
  vnode_list_remove(vp);
 }
 vp->v_iocount++;



 return(0);
}
