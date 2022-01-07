
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {scalar_t__ v_type; } ;
struct componentname {int cn_flags; char* cn_nameptr; scalar_t__ cn_nameiop; int cn_context; } ;


 scalar_t__ DELETE ;
 int EISDIR ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ENOTDIR ;
 int EROFS ;
 int FOLLOW ;
 int ISSYMLINK ;
 int LOCKPARENT ;
 scalar_t__ LOOKUP ;
 int MAKEENTRY ;
 int NOCACHE ;
 int RDONLY ;
 scalar_t__ RENAME ;
 int SAVESTART ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 int VNOP_LOOKUP (struct vnode*,struct vnode**,struct componentname*,int ) ;
 int WANTPARENT ;
 int panic (char*) ;
 scalar_t__ vnode_get (struct vnode*) ;
 int vnode_put (struct vnode*) ;

int
relookup(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp)
{
 struct vnode *dp = ((void*)0);
 int wantparent;
 int rdonly;
 int error = 0;




 vfs_context_t ctx = cnp->cn_context;;




 wantparent = cnp->cn_flags & (LOCKPARENT|WANTPARENT);
 rdonly = cnp->cn_flags & RDONLY;
 cnp->cn_flags &= ~ISSYMLINK;

 if (cnp->cn_flags & NOCACHE)
         cnp->cn_flags &= ~MAKEENTRY;
 else
         cnp->cn_flags |= MAKEENTRY;

 dp = dvp;






 if (cnp->cn_nameptr[0] == '\0') {
  if (cnp->cn_nameiop != LOOKUP || wantparent) {
   error = EISDIR;
   goto bad;
  }
  if (dp->v_type != VDIR) {
   error = ENOTDIR;
   goto bad;
  }
  if ( (vnode_get(dp)) ) {
          error = ENOENT;
   goto bad;
  }
  *vpp = dp;

  if (cnp->cn_flags & SAVESTART)
   panic("lookup: SAVESTART");
  return (0);
 }



 if ( (error = VNOP_LOOKUP(dp, vpp, cnp, ctx)) ) {
  if (error != EJUSTRETURN)
   goto bad;
  if (rdonly) {
   error = EROFS;
   goto bad;
  }





  return (0);
 }
 dp = *vpp;
 if (rdonly &&
     (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME)) {
  error = EROFS;
  goto bad2;
 }


 return (0);

bad2:
 vnode_put(dp);
bad:
 *vpp = ((void*)0);

 return (error);
}
