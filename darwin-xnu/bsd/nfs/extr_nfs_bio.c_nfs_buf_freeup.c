
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct nfsbuffreehead {int dummy; } ;
struct TYPE_2__ {scalar_t__ le_next; } ;
struct nfsbuf {scalar_t__ nb_timestamp; int nb_bufsize; scalar_t__ nb_data; int nb_flags; int nb_wcred; int nb_rcred; int * nb_np; TYPE_1__ nb_vnbufs; scalar_t__ nb_refs; } ;


 int FREE (struct nfsbuf*,int ) ;
 int FSDBG (int,scalar_t__,int,int,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int LRU_FREEUP_FRAC_ON_TIMER ;
 int LRU_TO_FREEUP ;
 int META_FREEUP_FRAC_ON_TIMER ;
 int META_TO_FREEUP ;
 int M_TEMP ;
 scalar_t__ NBUFSTAMPVALID (struct nfsbuf*) ;
 int NB_META ;
 int NFSBUFCNTCHK () ;
 int NFSBUF_LRU_STALE ;
 int NFSBUF_META_STALE ;
 scalar_t__ NFSNOLIST ;
 struct nfsbuf* TAILQ_FIRST (struct nfsbuffreehead*) ;
 int TAILQ_INIT (struct nfsbuffreehead*) ;
 int TAILQ_INSERT_TAIL (struct nfsbuffreehead*,struct nfsbuf*,int ) ;
 int TAILQ_REMOVE (struct nfsbuffreehead*,struct nfsbuf*,int ) ;
 int kauth_cred_unref (int *) ;
 int kfree (scalar_t__,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int microuptime (struct timeval*) ;
 int nb_free ;
 int nb_hash ;
 int nb_vnbufs ;
 int nfs_buf_mutex ;
 int nfs_buf_remfree (struct nfsbuf*) ;
 scalar_t__ nfsbufcnt ;
 struct nfsbuffreehead nfsbuffree ;
 int nfsbuffreecnt ;
 struct nfsbuffreehead nfsbuffreemeta ;
 int nfsbuffreemetacnt ;
 int nfsbufmetacnt ;
 scalar_t__ nfsbufmin ;

void
nfs_buf_freeup(int timer)
{
 struct nfsbuf *fbp;
 struct timeval now;
 int count;
 struct nfsbuffreehead nfsbuffreeup;

 TAILQ_INIT(&nfsbuffreeup);

 lck_mtx_lock(nfs_buf_mutex);

 microuptime(&now);

 FSDBG(320, nfsbufcnt, nfsbuffreecnt, nfsbuffreemetacnt, 0);

 count = timer ? nfsbuffreecnt/LRU_FREEUP_FRAC_ON_TIMER : LRU_TO_FREEUP;
 while ((nfsbufcnt > nfsbufmin) && (count-- > 0)) {
  fbp = TAILQ_FIRST(&nfsbuffree);
  if (!fbp)
   break;
  if (fbp->nb_refs)
   break;
  if (NBUFSTAMPVALID(fbp) &&
      (fbp->nb_timestamp + (2*NFSBUF_LRU_STALE)) > now.tv_sec)
   break;
  nfs_buf_remfree(fbp);

  if (fbp->nb_np) {
   if (fbp->nb_vnbufs.le_next != NFSNOLIST) {
    LIST_REMOVE(fbp, nb_vnbufs);
    fbp->nb_vnbufs.le_next = NFSNOLIST;
   }
   fbp->nb_np = ((void*)0);
  }
  LIST_REMOVE(fbp, nb_hash);
  TAILQ_INSERT_TAIL(&nfsbuffreeup, fbp, nb_free);
  nfsbufcnt--;
 }

 count = timer ? nfsbuffreemetacnt/META_FREEUP_FRAC_ON_TIMER : META_TO_FREEUP;
 while ((nfsbufcnt > nfsbufmin) && (count-- > 0)) {
  fbp = TAILQ_FIRST(&nfsbuffreemeta);
  if (!fbp)
   break;
  if (fbp->nb_refs)
   break;
  if (NBUFSTAMPVALID(fbp) &&
      (fbp->nb_timestamp + (2*NFSBUF_META_STALE)) > now.tv_sec)
   break;
  nfs_buf_remfree(fbp);

  if (fbp->nb_np) {
   if (fbp->nb_vnbufs.le_next != NFSNOLIST) {
    LIST_REMOVE(fbp, nb_vnbufs);
    fbp->nb_vnbufs.le_next = NFSNOLIST;
   }
   fbp->nb_np = ((void*)0);
  }
  LIST_REMOVE(fbp, nb_hash);
  TAILQ_INSERT_TAIL(&nfsbuffreeup, fbp, nb_free);
  nfsbufcnt--;
  nfsbufmetacnt--;
 }

 FSDBG(320, nfsbufcnt, nfsbuffreecnt, nfsbuffreemetacnt, 0);
 NFSBUFCNTCHK();

 lck_mtx_unlock(nfs_buf_mutex);

 while ((fbp = TAILQ_FIRST(&nfsbuffreeup))) {
  TAILQ_REMOVE(&nfsbuffreeup, fbp, nb_free);

  if (IS_VALID_CRED(fbp->nb_rcred))
   kauth_cred_unref(&fbp->nb_rcred);
  if (IS_VALID_CRED(fbp->nb_wcred))
   kauth_cred_unref(&fbp->nb_wcred);

  if (ISSET(fbp->nb_flags, NB_META) && fbp->nb_data)
   kfree(fbp->nb_data, fbp->nb_bufsize);
  FREE(fbp, M_TEMP);
 }

}
