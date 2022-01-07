
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct nameidata {TYPE_1__* ni_vp; int ni_next; TYPE_1__* ni_dvp; } ;
struct componentname {scalar_t__ cn_nameiop; int cn_flags; int cn_nameptr; scalar_t__ cn_namelen; } ;
struct TYPE_4__ {scalar_t__ v_type; } ;


 int ARG_VNODE1 ;
 int ARG_VNODE2 ;
 int AUDITVNPATH1 ;
 int AUDITVNPATH2 ;
 int AUDIT_ARG (int ,TYPE_1__*,int ) ;
 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 int ISDOTDOT ;
 int ISLASTCN ;
 scalar_t__ LOOKUP ;
 int SAVESTART ;
 scalar_t__ VDIR ;
 int panic (char*) ;
 scalar_t__ vnode_get (TYPE_1__*) ;
 int vnpath ;

__attribute__((used)) static int
lookup_handle_emptyname(struct nameidata *ndp, struct componentname *cnp, int wantparent)
{
 vnode_t dp;
 int error = 0;

 dp = ndp->ni_vp;
 cnp->cn_namelen = 0;




 if (dp->v_type != VDIR) {
  error = ENOTDIR;
  goto out;
 }
 if (cnp->cn_nameiop != LOOKUP) {
  error = EISDIR;
  goto out;
 }
 if (wantparent) {






         if ( (vnode_get(dp)) ) {
          error = ENOENT;
   goto out;
  }
  ndp->ni_dvp = dp;
 }
 cnp->cn_flags &= ~ISDOTDOT;
 cnp->cn_flags |= ISLASTCN;
 ndp->ni_next = cnp->cn_nameptr;
 ndp->ni_vp = dp;

 if (cnp->cn_flags & AUDITVNPATH1)
  AUDIT_ARG(vnpath, dp, ARG_VNODE1);
 else if (cnp->cn_flags & AUDITVNPATH2)
  AUDIT_ARG(vnpath, dp, ARG_VNODE2);
 if (cnp->cn_flags & SAVESTART)
  panic("lookup: SAVESTART");

 return 0;
out:
 return error;
}
