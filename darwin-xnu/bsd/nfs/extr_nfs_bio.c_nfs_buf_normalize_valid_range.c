
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsbuf {int nb_validoff; int nb_bufsize; int nb_validend; } ;
typedef scalar_t__ off_t ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_3__ {int n_size; } ;


 scalar_t__ NBOFF (struct nfsbuf*) ;
 scalar_t__ NBPGVALID (struct nfsbuf*,int) ;
 int PAGE_SIZE ;

void
nfs_buf_normalize_valid_range(nfsnode_t np, struct nfsbuf *bp)
{
 int pg, npg;

 pg = bp->nb_validoff/PAGE_SIZE;
 while (pg >= 0 && NBPGVALID(bp,pg))
  pg--;
 bp->nb_validoff = (pg+1) * PAGE_SIZE;

 npg = bp->nb_bufsize/PAGE_SIZE;
 pg = bp->nb_validend/PAGE_SIZE;
 while (pg < npg && NBPGVALID(bp,pg))
  pg++;
 bp->nb_validend = pg * PAGE_SIZE;

 if (NBOFF(bp) + bp->nb_validend > (off_t)np->n_size)
  bp->nb_validend = np->n_size % bp->nb_bufsize;
}
