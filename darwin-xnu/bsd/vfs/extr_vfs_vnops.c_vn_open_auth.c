
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vfs_context_t ;
typedef int uint32_t ;
struct vnode_attr {int va_dataprotect_flags; } ;
struct vnode {int v_flag; struct vnode* v_parent; } ;
struct TYPE_3__ {scalar_t__ cn_context; int cn_flags; int cn_nameiop; } ;
struct nameidata {int ni_flag; struct vnode* ni_vp; TYPE_1__ ni_cnd; struct vnode* ni_dvp; int ni_op; } ;
typedef int boolean_t ;
struct TYPE_4__ {int p_flag; } ;


 int AUDITVNPATH1 ;
 int CN_ALLOWRSRCFORK ;
 int CN_RAW_ENCRYPTED ;
 int CN_SKIPNAMECACHE ;
 int CREATE ;
 int EEXIST ;
 int EINVAL ;
 int EKEEPLOOKING ;
 int ENOENT ;
 int EPERM ;
 int EREDRIVEOPEN ;
 int FALSE ;
 int FENCRYPTED ;
 int FOLLOW ;
 int FUNENCRYPTED ;
 int FWRITE ;
 int IOTaskHasEntitlement (int ,char*) ;
 scalar_t__ ISSET (int ,int ) ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int LOOKUP ;
 int MIN (int,int) ;
 void* NAMEI_COMPOUNDOPEN ;
 int NAMEI_CONTLOOKUP ;
 int NOCROSSMOUNT ;
 struct vnode* NULLVP ;
 int OP_LINK ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_EVTONLY ;
 int O_EXCL ;
 int O_NOFOLLOW ;
 int O_SYMLINK ;
 int O_TRUNC ;
 int PVFS ;
 int P_CHECKOPENEVT ;
 int RETRY_NO_YIELD_COUNT ;
 int TRUE ;
 int USEDVP ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VA_DP_RAWENCRYPTED ;
 int VA_DP_RAWUNENCRYPTED ;
 int VNOP_CLOSE (struct vnode*,int,scalar_t__) ;
 int VNOP_COMPOUND_OPEN (struct vnode*,struct vnode**,struct nameidata*,int ,int,int *,int *,scalar_t__) ;
 int VNOP_OPEN (struct vnode*,int,scalar_t__) ;
 int VOPENEVT ;
 int WANTPARENT ;
 TYPE_2__* current_proc () ;
 int current_task () ;
 int hz ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int panic (char*) ;
 int tsleep (int*,int ,char*,int ) ;
 int va_dataprotect_flags ;
 scalar_t__ vfs_context_kernel () ;
 int vn_authorize_open_existing (struct vnode*,TYPE_1__*,int,scalar_t__,int *) ;
 int vn_open_auth_do_create (struct nameidata*,struct vnode_attr*,int,int*,int*,scalar_t__) ;
 int vn_open_auth_finish (struct vnode*,int,scalar_t__) ;
 int vnode_compound_open_available (struct vnode*) ;
 scalar_t__ vnode_isnamedstream (struct vnode*) ;
 scalar_t__ vnode_isshadow (struct vnode*) ;
 scalar_t__ vnode_isswap (struct vnode*) ;
 int vnode_isvroot (struct vnode*) ;
 scalar_t__ vnode_mount (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_recycle (struct vnode*) ;

int
vn_open_auth(struct nameidata *ndp, int *fmodep, struct vnode_attr *vap)
{
 struct vnode *vp;
 struct vnode *dvp;
 vfs_context_t ctx = ndp->ni_cnd.cn_context;
 int error;
 int fmode;
 uint32_t origcnflags;
 boolean_t did_create;
 boolean_t did_open;
 boolean_t need_vnop_open;
 boolean_t batched;
 boolean_t ref_failed;
 int nretries = 0;

again:
 vp = ((void*)0);
 dvp = ((void*)0);
 batched = FALSE;
 did_create = FALSE;
 need_vnop_open = TRUE;
 ref_failed = FALSE;
 fmode = *fmodep;
 origcnflags = ndp->ni_cnd.cn_flags;


 if (VATTR_IS_ACTIVE (vap, va_dataprotect_flags)
  && ISSET(vap->va_dataprotect_flags, VA_DP_RAWENCRYPTED)) {
  fmode |= FENCRYPTED;
 }




 if (fmode & O_CREAT) {
         if ( (fmode & O_DIRECTORY) ) {
          error = EINVAL;
   goto out;
  }
  ndp->ni_cnd.cn_nameiop = CREATE;




  ndp->ni_cnd.cn_flags &= (USEDVP | NOCROSSMOUNT);
  ndp->ni_cnd.cn_flags |= LOCKPARENT | LOCKLEAF | AUDITVNPATH1;
  ndp->ni_flag = NAMEI_COMPOUNDOPEN;




  if ((fmode & O_EXCL) == 0 && (fmode & O_NOFOLLOW) == 0 && (origcnflags & FOLLOW) != 0)
   ndp->ni_cnd.cn_flags |= FOLLOW;

continue_create_lookup:
  if ( (error = namei(ndp)) )
   goto out;

  dvp = ndp->ni_dvp;
  vp = ndp->ni_vp;

  batched = vnode_compound_open_available(dvp);


  if (vp == ((void*)0)) {

   if (vap == ((void*)0)) {
    vnode_put(dvp);
    error = EINVAL;
    goto out;
   }





   error = vn_open_auth_do_create(ndp, vap, fmode, &did_create, &did_open, ctx);

   dvp = ndp->ni_dvp;
   vp = ndp->ni_vp;





   if (error == EKEEPLOOKING) {
    if (!batched) {
     panic("EKEEPLOOKING from a filesystem that doesn't support compound VNOPs?");
    }
    goto continue_create_lookup;
   }

   nameidone(ndp);
   if (dvp) {
    panic("Shouldn't have a dvp here.");
   }

   if (error) {



    if ((error == EEXIST) && !(fmode & O_EXCL)){
     if (vp)
      vnode_put(vp);
     goto again;
    }
    goto bad;
   }

   need_vnop_open = !did_open;
  }
  else {
   if (fmode & O_EXCL)
    error = EEXIST;







   if (error == 0 && batched && (vnode_mount(dvp) == vnode_mount(vp))) {
    error = VNOP_COMPOUND_OPEN(dvp, &ndp->ni_vp, ndp, 0, fmode, ((void*)0), ((void*)0), ctx);

    if (error == 0) {
     vp = ndp->ni_vp;
     need_vnop_open = FALSE;
    } else if (error == EKEEPLOOKING) {
     if ((ndp->ni_flag & NAMEI_CONTLOOKUP) == 0) {
      panic("EKEEPLOOKING, but continue flag not set?");
     }
     goto continue_create_lookup;
    }
   }
   nameidone(ndp);
   vnode_put(dvp);
   ndp->ni_dvp = NULLVP;

   if (error) {
    goto bad;
   }

   fmode &= ~O_CREAT;


  }
 }
    else {



  ndp->ni_cnd.cn_nameiop = LOOKUP;

  ndp->ni_cnd.cn_flags &= (USEDVP | NOCROSSMOUNT);
  ndp->ni_cnd.cn_flags |= FOLLOW | LOCKLEAF | AUDITVNPATH1 | WANTPARENT;




  if (fmode & FENCRYPTED)
   ndp->ni_cnd.cn_flags |= CN_RAW_ENCRYPTED | CN_SKIPNAMECACHE;
  ndp->ni_flag = NAMEI_COMPOUNDOPEN;


  if (fmode & O_NOFOLLOW || fmode & O_SYMLINK || (origcnflags & FOLLOW) == 0) {
   ndp->ni_cnd.cn_flags &= ~FOLLOW;
  }


  do {
   if ( (error = namei(ndp)) )
    goto out;
   vp = ndp->ni_vp;
   dvp = ndp->ni_dvp;


   batched = vnode_compound_open_available(dvp);
   if (batched && ((vp == NULLVP) || (vnode_mount(dvp) == vnode_mount(vp)))) {
    error = VNOP_COMPOUND_OPEN(dvp, &ndp->ni_vp, ndp, 0, fmode, ((void*)0), ((void*)0), ctx);
    vp = ndp->ni_vp;
    if (error == 0) {
     need_vnop_open = FALSE;
    } else if (error == EKEEPLOOKING) {
     if ((ndp->ni_flag & NAMEI_CONTLOOKUP) == 0) {
      panic("EKEEPLOOKING, but continue flag not set?");
     }
    }
   }
  } while (error == EKEEPLOOKING);

  nameidone(ndp);
  vnode_put(dvp);
  ndp->ni_dvp = NULLVP;

  if (error) {
   goto bad;
  }
 }





 if (ndp->ni_dvp != NULLVP) {
  panic("Haven't cleaned up adequately in vn_open_auth()");
 }
 if (vnode_isswap(vp) && (fmode & (FWRITE | O_TRUNC)) && (ctx != vfs_context_kernel())) {
  error = EPERM;
  goto bad;
 }







 if (need_vnop_open) {
  if (batched && !vnode_isvroot(vp) && !vnode_isnamedstream(vp)) {
   panic("Why am I trying to use VNOP_OPEN() on anything other than the root or a named stream?");
  }

  if (!did_create) {
   error = vn_authorize_open_existing(vp, &ndp->ni_cnd, fmode, ctx, ((void*)0));
   if (error) {
    goto bad;
   }
  }

  if (VATTR_IS_ACTIVE (vap, va_dataprotect_flags)
   && ISSET(vap->va_dataprotect_flags, VA_DP_RAWUNENCRYPTED)) {

   boolean_t entitled = FALSE;

   entitled = IOTaskHasEntitlement(current_task(), "com.apple.private.security.file-unencrypt-access");

   if (!entitled) {
    error = EPERM;
    goto bad;
   }
   fmode |= FUNENCRYPTED;
  }

  error = VNOP_OPEN(vp, fmode, ctx);
  if (error) {
   goto bad;
  }
  need_vnop_open = FALSE;
 }
 if (!did_create && (vp->v_flag & VOPENEVT) && (current_proc()->p_flag & P_CHECKOPENEVT)) {
  fmode |= O_EVTONLY;
 }




 error = vn_open_auth_finish(vp, fmode, ctx);
 if (error) {
  ref_failed = TRUE;
  goto bad;
 }


 if (batched || did_create)
  fmode &= ~O_TRUNC;

 *fmodep = fmode;
 return (0);

bad:

 if (!need_vnop_open) {
  VNOP_CLOSE(vp, fmode, ctx);
 }

 ndp->ni_vp = ((void*)0);
 if (vp) {
  vnode_put(vp);







  if (((error == ENOENT) && (*fmodep & O_CREAT)) || (error == EREDRIVEOPEN) || ref_failed) {
   nretries += 1;
   if (nretries > RETRY_NO_YIELD_COUNT) {

    tsleep(&nretries, PVFS, "vn_open_auth_retry",
        MIN((nretries * (hz/100)), hz));
   }
   goto again;
  }
 }

out:
 return (error);
}
