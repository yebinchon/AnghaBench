
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int thread_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct nfs_open_file {scalar_t__ nof_owner; } ;
struct nfs_lock_owner {int nlo_pid; scalar_t__ nlo_open_owner; } ;
struct nfs_file_lock {int nfl_flags; int nfl_type; int nfl_end; int nfl_start; struct nfs_lock_owner* nfl_owner; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int msgreq ;
typedef int kauth_cred_t ;
struct TYPE_10__ {int l_pid; int l_type; int l_len; int l_start; int l_whence; } ;
struct TYPE_13__ {TYPE_1__ lm_fl; int lm_cred; int lm_fh_len; int lm_fh; int lm_flags; int lm_version; } ;
struct TYPE_12__ {TYPE_4__ lmr_msg; } ;
struct TYPE_11__ {int n_fhp; int n_fhsize; } ;
typedef TYPE_3__ LOCKD_MSG_REQUEST ;
typedef TYPE_4__ LOCKD_MSG ;


 int ENXIO ;
 int LOCKD_MSG_BLOCK ;
 int LOCKD_MSG_RECLAIM ;
 int LOCKD_MSG_VERSION ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_V2FH ;
 int NFS_FILE_LOCK_WAIT ;
 int NFS_FLOCK_LENGTH (int ,int ) ;
 scalar_t__ NFS_VER2 ;
 int SEEK_SET ;
 int bcopy (int ,int ,int ) ;
 int bzero (TYPE_3__*,int) ;
 int cru2x (int ,int *) ;
 int nfs3_lockd_request (TYPE_2__*,int ,TYPE_3__*,int,int ) ;
 int nfs_lock_owner_clear_busy (struct nfs_lock_owner*) ;
 int nfs_lock_owner_set_busy (struct nfs_lock_owner*,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_open_owner_ref (scalar_t__) ;

int
nfs3_setlock_rpc(
 nfsnode_t np,
 struct nfs_open_file *nofp,
 struct nfs_file_lock *nflp,
 int reclaim,
 int flags,
 thread_t thd,
 kauth_cred_t cred)
{
 struct nfs_lock_owner *nlop = nflp->nfl_owner;
 struct nfsmount *nmp;
 int error;
 LOCKD_MSG_REQUEST msgreq;
 LOCKD_MSG *msg;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (!nlop->nlo_open_owner) {
  nfs_open_owner_ref(nofp->nof_owner);
  nlop->nlo_open_owner = nofp->nof_owner;
 }
 if ((error = nfs_lock_owner_set_busy(nlop, thd)))
  return (error);


 bzero(&msgreq, sizeof(msgreq));
 msg = &msgreq.lmr_msg;
 msg->lm_version = LOCKD_MSG_VERSION;
 if ((nflp->nfl_flags & NFS_FILE_LOCK_WAIT) && !reclaim)
  msg->lm_flags |= LOCKD_MSG_BLOCK;
 if (reclaim)
  msg->lm_flags |= LOCKD_MSG_RECLAIM;
 msg->lm_fh_len = (nmp->nm_vers == NFS_VER2) ? NFSX_V2FH : np->n_fhsize;
 bcopy(np->n_fhp, msg->lm_fh, msg->lm_fh_len);
 cru2x(cred, &msg->lm_cred);

 msg->lm_fl.l_whence = SEEK_SET;
 msg->lm_fl.l_start = nflp->nfl_start;
 msg->lm_fl.l_len = NFS_FLOCK_LENGTH(nflp->nfl_start, nflp->nfl_end);
 msg->lm_fl.l_type = nflp->nfl_type;
 msg->lm_fl.l_pid = nlop->nlo_pid;

 error = nfs3_lockd_request(np, 0, &msgreq, flags, thd);

 nfs_lock_owner_clear_busy(nlop);
 return (error);
}
