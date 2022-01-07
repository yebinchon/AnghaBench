
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnode {int v_knotes; TYPE_1__* v_fifoinfo; } ;
struct knote {int kn_filter; int kn_flags; int kn_data; int kn_filtid; int kn_hookid; void* kn_hook; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
struct TYPE_4__ {int fg_cred; scalar_t__ fg_data; } ;
struct TYPE_3__ {int fi_readsock; } ;


 int EINVAL ;
 int ENOTSUP ;
 int EVFILTID_VN ;



 int EV_ERROR ;
 int KNOTE_ATTACH (int *,struct knote*) ;
 int VNODE_MONITOR_BEGIN ;
 int VNODE_NODEAD ;
 int VNOP_MONITOR (struct vnode*,int ,int ,void*,int ) ;
 int filt_vnode_common (struct knote*,struct vnode*,int ) ;
 int mac_vnode_check_kqfilter (int ,int ,struct knote*,struct vnode*) ;
 int spec_kqfilter (struct vnode*,struct knote*,struct kevent_internal_s*) ;
 int vget_internal (struct vnode*,int ,int ) ;
 int vnode_ischr (struct vnode*) ;
 int vnode_isfifo (struct vnode*) ;
 int vnode_isreg (struct vnode*) ;
 int vnode_lock (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;
 int vnode_vid (struct vnode*) ;

__attribute__((used)) static int
vn_kqfilt_add(struct fileproc *fp, struct knote *kn,
  struct kevent_internal_s *kev, vfs_context_t ctx)
{
 struct vnode *vp;
 int error = 0;
 int result = 0;

 vp = (struct vnode *)fp->f_fglob->fg_data;




 if ((error = vget_internal(vp, 0, VNODE_NODEAD)) == 0) {
  switch (kn->kn_filter) {
   case 130:
   case 128:
    if (vnode_isfifo(vp)) {

     if (!(vp->v_fifoinfo && vp->v_fifoinfo->fi_readsock)) {
      error = ENOTSUP;
     }

    } else if (!vnode_isreg(vp)) {
     if (vnode_ischr(vp)) {
      result = spec_kqfilter(vp, kn, kev);
      if ((kn->kn_flags & EV_ERROR) == 0) {

       vnode_put(vp);
       return result;
      }
     }
     error = EINVAL;
    }
    break;
   case 129:
    break;
   default:
    error = EINVAL;
  }

  if (error == 0) {
   kn->kn_hook = (void*)vp;
   kn->kn_hookid = vnode_vid(vp);
   kn->kn_filtid = EVFILTID_VN;

   vnode_lock(vp);
   KNOTE_ATTACH(&vp->v_knotes, kn);
   result = filt_vnode_common(kn, vp, 0);
   vnode_unlock(vp);





   VNOP_MONITOR(vp, 0, VNODE_MONITOR_BEGIN, (void*) kn, ctx);
  }

  vnode_put(vp);
 }

 out:
 if (error) {
  kn->kn_flags = EV_ERROR;
  kn->kn_data = error;
 }

 return result;
}
