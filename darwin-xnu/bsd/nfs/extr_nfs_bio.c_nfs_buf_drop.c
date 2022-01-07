
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsbuf {int nb_lflags; } ;


 int CLR (int ,int) ;
 scalar_t__ ISSET (int ,int) ;
 int NBL_BUSY ;
 int NBL_WANTED ;
 int panic (char*) ;
 int wakeup (struct nfsbuf*) ;

void
nfs_buf_drop(struct nfsbuf *bp)
{
 int need_wakeup = 0;

 if (!ISSET(bp->nb_lflags, NBL_BUSY))
  panic("nfs_buf_drop: buffer not busy!");
 if (ISSET(bp->nb_lflags, NBL_WANTED)) {

  need_wakeup = 1;
 }

 CLR(bp->nb_lflags, (NBL_BUSY | NBL_WANTED));

 if (need_wakeup)
         wakeup(bp);
}
