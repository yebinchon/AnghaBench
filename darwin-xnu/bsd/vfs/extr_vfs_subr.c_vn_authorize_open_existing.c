
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int vfs_context_t ;
struct componentname {TYPE_1__* cn_ndp; } ;
typedef int kauth_action_t ;
struct TYPE_13__ {scalar_t__ v_type; scalar_t__ v_tag; } ;
struct TYPE_12__ {int ni_flag; } ;


 int EACCES ;
 int EISDIR ;
 int ELOOP ;
 int ENOTDIR ;
 int EOPNOTSUPP ;
 int FREAD ;
 int FWRITE ;
 int KAUTH_VNODE_APPEND_DATA ;
 int KAUTH_VNODE_READ_DATA ;
 int KAUTH_VNODE_WRITE_DATA ;
 int MNT_MULTILABEL ;
 int NAMEI_TRAILINGSLASH ;
 int O_APPEND ;
 int O_DIRECTORY ;
 int O_NOFOLLOW ;
 int O_TRUNC ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 scalar_t__ VSOCK ;
 scalar_t__ VT_FDESC ;
 int mac_vnode_check_open (int ,TYPE_2__*,int) ;
 int panic (char*) ;
 int vfs_flags (int ) ;
 int vnode_authorize (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ vnode_isdir (TYPE_2__*) ;
 scalar_t__ vnode_isnamedstream (TYPE_2__*) ;
 scalar_t__ vnode_isshadow (TYPE_2__*) ;
 int vnode_label (int ,int *,TYPE_2__*,int *,int ,int ) ;
 int vnode_mount (TYPE_2__*) ;
 int vnode_verifynamedstream (TYPE_2__*) ;

int
vn_authorize_open_existing(vnode_t vp, struct componentname *cnp, int fmode, vfs_context_t ctx, void *reserved)
{

 kauth_action_t action;
 int error = 0;
 if (cnp->cn_ndp == ((void*)0)) {
  panic("NULL ndp");
 }
 if (reserved != ((void*)0)) {
  panic("reserved not NULL.");
 }
 if ( (fmode & O_DIRECTORY) && vp->v_type != VDIR ) {
  return (ENOTDIR);
 }

 if (vp->v_type == VSOCK && vp->v_tag != VT_FDESC) {
  return (EOPNOTSUPP);
 }

 if (vp->v_type == VLNK && (fmode & O_NOFOLLOW) != 0) {
  return (ELOOP);
 }


 if (vnode_isdir(vp) && (fmode & (FWRITE | O_TRUNC))) {
  return (EISDIR);
 }

 if ((cnp->cn_ndp->ni_flag & NAMEI_TRAILINGSLASH)) {
  if (vp->v_type != VDIR) {
   return (ENOTDIR);
  }
 }
 action = 0;
 if (fmode & FREAD) {
  action |= KAUTH_VNODE_READ_DATA;
 }
 if (fmode & (FWRITE | O_TRUNC)) {






  if ((fmode & O_APPEND) && !(fmode & O_TRUNC)) {
   action |= KAUTH_VNODE_APPEND_DATA;
  } else {
   action |= KAUTH_VNODE_WRITE_DATA;
  }
 }
 error = vnode_authorize(vp, ((void*)0), action, ctx);
 return error;
}
