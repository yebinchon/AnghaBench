
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tqe_next; } ;
struct nfsbuf {TYPE_1__ nb_free; int nb_flags; } ;


 scalar_t__ ISSET (int ,int ) ;
 int NB_DELWRI ;
 int NB_META ;
 int NFSBUFCNTCHK () ;
 scalar_t__ NFSNOLIST ;
 int TAILQ_REMOVE (int *,struct nfsbuf*,int ) ;
 int nb_free ;
 int nfsbufdelwri ;
 int nfsbufdelwricnt ;
 int nfsbuffree ;
 int nfsbuffreecnt ;
 int nfsbuffreemeta ;
 int nfsbuffreemetacnt ;
 int panic (char*) ;

void
nfs_buf_remfree(struct nfsbuf *bp)
{
 if (bp->nb_free.tqe_next == NFSNOLIST)
  panic("nfsbuf not on free list");
 if (ISSET(bp->nb_flags, NB_DELWRI)) {
  nfsbufdelwricnt--;
  TAILQ_REMOVE(&nfsbufdelwri, bp, nb_free);
 } else if (ISSET(bp->nb_flags, NB_META)) {
  nfsbuffreemetacnt--;
  TAILQ_REMOVE(&nfsbuffreemeta, bp, nb_free);
 } else {
  nfsbuffreecnt--;
  TAILQ_REMOVE(&nfsbuffree, bp, nb_free);
 }
 bp->nb_free.tqe_next = NFSNOLIST;
 NFSBUFCNTCHK();
}
