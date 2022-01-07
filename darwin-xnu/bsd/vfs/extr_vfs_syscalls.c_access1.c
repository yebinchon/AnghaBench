
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int kauth_action_t ;


 int KAUTH_VNODE_ACCESS ;
 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int KAUTH_VNODE_EXECUTE ;
 int KAUTH_VNODE_READ_DATA ;
 int KAUTH_VNODE_SEARCH ;
 int KAUTH_VNODE_WRITE_DATA ;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 int _ACCESS_EXTENDED_MASK ;
 int mac_vnode_check_access (int ,int ,int) ;
 int vnode_authorize (int ,int ,int,int ) ;
 scalar_t__ vnode_isdir (int ) ;

__attribute__((used)) static int
access1(vnode_t vp, vnode_t dvp, int uflags, vfs_context_t ctx)
{
  kauth_action_t action;
 int error;





  if (!(uflags & _ACCESS_EXTENDED_MASK)) {
   action = 0;
    if (uflags & R_OK)
   action |= KAUTH_VNODE_READ_DATA;
    if (uflags & W_OK) {
   if (vnode_isdir(vp)) {
    action |= KAUTH_VNODE_ADD_FILE |
        KAUTH_VNODE_ADD_SUBDIRECTORY;

   } else {
    action |= KAUTH_VNODE_WRITE_DATA;
   }
  }
    if (uflags & X_OK) {
   if (vnode_isdir(vp)) {
    action |= KAUTH_VNODE_SEARCH;
   } else {
    action |= KAUTH_VNODE_EXECUTE;
   }
  }
   } else {

  action = uflags >> 8;
 }
  if (action != 0) {
   error = vnode_authorize(vp, dvp, action | KAUTH_VNODE_ACCESS, ctx);
 } else {
  error = 0;
 }

 return(error);
}
