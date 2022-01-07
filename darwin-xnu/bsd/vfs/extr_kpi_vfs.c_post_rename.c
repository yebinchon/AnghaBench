
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int errno_t ;


 int NOTE_DELETE ;
 int NOTE_LINK ;
 int NOTE_RENAME ;
 int NOTE_WRITE ;
 int lock_vnode_and_post (scalar_t__,int) ;
 scalar_t__ vnode_isdir (scalar_t__) ;
 int vnode_setneedinactive (scalar_t__) ;

__attribute__((used)) static errno_t
post_rename(vnode_t fdvp, vnode_t fvp, vnode_t tdvp, vnode_t tvp)
{
 if (tvp && tvp != fvp)
  vnode_setneedinactive(tvp);


 int events = NOTE_WRITE;
 if (vnode_isdir(fvp)) {




  if (((fdvp != tdvp) && (!tvp)) || ((fdvp == tdvp) && (tvp))) {
   events |= NOTE_LINK;
  }
 }

 lock_vnode_and_post(fdvp, events);
 if (fdvp != tdvp) {
  lock_vnode_and_post(tdvp, events);
 }


 if (tvp)
 {
  lock_vnode_and_post(tvp, NOTE_DELETE);
 }

 lock_vnode_and_post(fvp, NOTE_RENAME);

 return 0;
}
