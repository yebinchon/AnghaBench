
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnop_lookup_args {struct vnode** a_vpp; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct componentname {int cn_flags; int cn_nameiop; char* cn_nameptr; size_t cn_namelen; int cn_context; } ;
struct TYPE_7__ {scalar_t__ dn_type; } ;
typedef TYPE_1__ devnode_t ;
struct TYPE_8__ {TYPE_1__* de_dnp; } ;
typedef TYPE_2__ devdirent_t ;


 int CREATE ;
 int DELETE ;
 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 scalar_t__ DEV_DIR ;
 int EAGAIN ;
 int EISDIR ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ENOTDIR ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int LOCKPARENT ;
 int RENAME ;
 TYPE_1__* VTODN (struct vnode*) ;
 int WANTPARENT ;
 TYPE_2__* dev_findname (TYPE_1__*,char*) ;
 int devfs_dntovn (TYPE_1__*,struct vnode**,struct proc*) ;
 struct proc* vfs_context_proc (int ) ;
 int vnode_get (struct vnode*) ;
 int vnode_put (struct vnode*) ;

__attribute__((used)) static int
devfs_lookup(struct vnop_lookup_args *ap)






{
 struct componentname *cnp = ap->a_cnp;
 vfs_context_t ctx = cnp->cn_context;
 struct proc *p = vfs_context_proc(ctx);
 struct vnode *dir_vnode = ap->a_dvp;
 struct vnode **result_vnode = ap->a_vpp;
 devnode_t * dir_node;
 devnode_t * node = ((void*)0);
 devdirent_t * nodename;
 int flags = cnp->cn_flags;
 int op = cnp->cn_nameiop;
 int wantparent = flags & (LOCKPARENT|WANTPARENT);
 int error = 0;
 char heldchar;

retry:

 *result_vnode = ((void*)0);


 dir_node = VTODN(dir_vnode);




 if (dir_node->dn_type != DEV_DIR) {
  return (ENOTDIR);
 }

 DEVFS_LOCK();



 heldchar = cnp->cn_nameptr[cnp->cn_namelen];
 cnp->cn_nameptr[cnp->cn_namelen] = '\0';

 nodename = dev_findname(dir_node, cnp->cn_nameptr);



 cnp->cn_nameptr[cnp->cn_namelen] = heldchar;

 if (nodename) {

         node = nodename->de_dnp;






  error = devfs_dntovn(node, result_vnode, p);
 }
 DEVFS_UNLOCK();

 if (error) {
         if (error == EAGAIN)
          goto retry;
  return error;
 }
 if (!nodename) {
         if (!(flags & ISLASTCN) || !(op == CREATE || op == RENAME)) {
   return ENOENT;
  }
  return (EJUSTRETURN);
 }
 if (op == DELETE && (flags & ISLASTCN)) {




  if (dir_node == node) {
          if (*result_vnode) {
           vnode_put(*result_vnode);
           *result_vnode = ((void*)0);
   }
   if ( ((error = vnode_get(dir_vnode)) == 0) ) {
           *result_vnode = dir_vnode;
   }
   return (error);
  }
  return (0);
 }







 if (op == RENAME && wantparent && (flags & ISLASTCN)) {





  if (dir_node == node) {
          error = EISDIR;
   goto drop_ref;
  }
  return (0);
 }
 if ((flags & ISDOTDOT) == 0 && dir_node == node) {
         if (*result_vnode) {
          vnode_put(*result_vnode);
          *result_vnode = ((void*)0);
  }
  if ( (error = vnode_get(dir_vnode)) ) {
   return (error);
  }
  *result_vnode = dir_vnode;
 }
 return (0);

drop_ref:
 if (*result_vnode) {
         vnode_put(*result_vnode);
  *result_vnode = ((void*)0);
 }
 return (error);
}
