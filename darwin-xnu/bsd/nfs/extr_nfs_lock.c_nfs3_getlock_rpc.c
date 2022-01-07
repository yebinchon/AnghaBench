
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uint64_t ;
struct nfsmount {scalar_t__ nm_vers; } ;
struct nfs_lock_owner {int nlo_pid; } ;
struct flock {scalar_t__ l_type; void* l_whence; int l_len; int l_start; int l_pid; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int msgreq ;
struct TYPE_10__ {scalar_t__ l_type; int l_len; int l_start; int l_pid; void* l_whence; } ;
struct TYPE_13__ {int lm_flags; TYPE_1__ lm_fl; int lm_cred; int lm_fh_len; int lm_fh; int lm_version; } ;
struct TYPE_12__ {int lmr_errno; TYPE_4__ lmr_msg; } ;
struct TYPE_11__ {int n_fhp; int n_fhsize; } ;
typedef TYPE_3__ LOCKD_MSG_REQUEST ;
typedef TYPE_4__ LOCKD_MSG ;


 int ENXIO ;
 scalar_t__ F_UNLCK ;
 int LOCKD_MSG_TEST ;
 int LOCKD_MSG_VERSION ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSX_V2FH ;
 int NFS_FLOCK_LENGTH (int ,int ) ;
 scalar_t__ NFS_VER2 ;
 void* SEEK_SET ;
 int bcopy (int ,int ,int ) ;
 int bzero (TYPE_3__*,int) ;
 int cru2x (int ,int *) ;
 int nfs3_lockd_request (TYPE_2__*,int ,TYPE_3__*,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int vfs_context_thread (int ) ;
 int vfs_context_ucred (int ) ;

int
nfs3_getlock_rpc(
 nfsnode_t np,
 struct nfs_lock_owner *nlop,
 struct flock *fl,
 uint64_t start,
 uint64_t end,
 vfs_context_t ctx)
{
 struct nfsmount *nmp;
 int error;
 LOCKD_MSG_REQUEST msgreq;
 LOCKD_MSG *msg;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return (ENXIO);


 bzero(&msgreq, sizeof(msgreq));
 msg = &msgreq.lmr_msg;
 msg->lm_version = LOCKD_MSG_VERSION;
 msg->lm_flags |= LOCKD_MSG_TEST;
 msg->lm_fh_len = (nmp->nm_vers == NFS_VER2) ? NFSX_V2FH : np->n_fhsize;
 bcopy(np->n_fhp, msg->lm_fh, msg->lm_fh_len);
 cru2x(vfs_context_ucred(ctx), &msg->lm_cred);

 msg->lm_fl.l_whence = SEEK_SET;
 msg->lm_fl.l_start = start;
 msg->lm_fl.l_len = NFS_FLOCK_LENGTH(start, end);
 msg->lm_fl.l_type = fl->l_type;
 msg->lm_fl.l_pid = nlop->nlo_pid;

 error = nfs3_lockd_request(np, 0, &msgreq, 0, vfs_context_thread(ctx));

 if (!error && (msg->lm_flags & LOCKD_MSG_TEST) && !msgreq.lmr_errno) {
  if (msg->lm_fl.l_type != F_UNLCK) {
   fl->l_type = msg->lm_fl.l_type;
   fl->l_pid = msg->lm_fl.l_pid;
   fl->l_start = msg->lm_fl.l_start;
   fl->l_len = msg->lm_fl.l_len;
   fl->l_whence = SEEK_SET;
  } else
   fl->l_type = F_UNLCK;
 }

 return (error);
}
