
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
struct vnode {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct knote {int kn_flags; scalar_t__ kn_fflags; scalar_t__ kn_data; struct kevent_internal_s kn_kevent; int kn_hookid; scalar_t__ kn_hook; } ;
struct filt_process_s {int dummy; } ;


 int EV_CLEAR ;
 int NOTE_REVOKE ;
 int VNODE_NODEAD ;
 int VNODE_WITHID ;
 int filt_vnode_common (struct knote*,struct vnode*,int) ;
 scalar_t__ vnode_getiocount (struct vnode*,int ,int) ;
 int vnode_lock (struct vnode*) ;
 int vnode_put_locked (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

__attribute__((used)) static int
filt_vnprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 vnode_t vp = (struct vnode *)kn->kn_hook;
 int activate;
 int hint = 0;

 vnode_lock(vp);
 if (vnode_getiocount(vp, kn->kn_hookid, VNODE_NODEAD | VNODE_WITHID) != 0) {

  hint = NOTE_REVOKE;
 }
 activate = filt_vnode_common(kn, vp, hint);
 if (activate) {
  *kev = kn->kn_kevent;
  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_data = 0;
   kn->kn_fflags = 0;
  }
 }


 if (hint == 0)
  vnode_put_locked(vp);
 vnode_unlock(vp);

 return activate;
}
