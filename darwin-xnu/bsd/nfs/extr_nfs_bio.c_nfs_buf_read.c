
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * thread_t ;
struct nfsbuf {int nb_flags; int nb_rcred; int nb_np; } ;
typedef int nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_2__ {int read_bios; } ;


 int CLR (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int NB_ASYNC ;
 int NB_DONE ;
 int NB_READ ;
 int NFS_BUF_MAP (struct nfsbuf*) ;
 int OSAddAtomic64 (int,int *) ;
 int * current_thread () ;
 int kauth_cred_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int nfs_buf_read_rpc (struct nfsbuf*,int *,int ) ;
 TYPE_1__ nfsstats ;
 int panic (char*) ;

int
nfs_buf_read(struct nfsbuf *bp)
{
 int error = 0;
 nfsnode_t np;
 thread_t thd;
 kauth_cred_t cred;

 np = bp->nb_np;
 cred = bp->nb_rcred;
 if (IS_VALID_CRED(cred))
  kauth_cred_ref(cred);
 thd = ISSET(bp->nb_flags, NB_ASYNC) ? ((void*)0) : current_thread();


 if (!ISSET(bp->nb_flags, NB_READ))
  panic("nfs_buf_read: !NB_READ");
 if (ISSET(bp->nb_flags, NB_DONE))
  CLR(bp->nb_flags, NB_DONE);

 NFS_BUF_MAP(bp);

 OSAddAtomic64(1, &nfsstats.read_bios);

 error = nfs_buf_read_rpc(bp, thd, cred);





 if (IS_VALID_CRED(cred))
  kauth_cred_unref(&cred);
 return (error);
}
