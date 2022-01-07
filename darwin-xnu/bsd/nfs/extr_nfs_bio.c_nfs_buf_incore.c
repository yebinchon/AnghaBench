
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nfsbuf* le_next; } ;
struct nfsbuf {scalar_t__ nb_np; int nb_flags; int nb_lblkno; TYPE_1__ nb_hash; } ;
typedef scalar_t__ nfsnode_t ;
typedef int daddr64_t ;
struct TYPE_4__ {struct nfsbuf* lh_first; } ;


 int FSDBG (int,struct nfsbuf*,int ,int ,scalar_t__) ;
 int ISSET (int ,int ) ;
 int NB_INVAL ;
 TYPE_2__* NFSBUFHASH (scalar_t__,int ) ;

struct nfsbuf *
nfs_buf_incore(nfsnode_t np, daddr64_t blkno)
{

 struct nfsbuf * bp = NFSBUFHASH(np, blkno)->lh_first;
 for (; bp != ((void*)0); bp = bp->nb_hash.le_next)
  if ((bp->nb_lblkno == blkno) && (bp->nb_np == np)) {
   if (!ISSET(bp->nb_flags, NB_INVAL)) {
    FSDBG(547, bp, blkno, bp->nb_flags, bp->nb_np);
    return (bp);
   }
  }
 return (((void*)0));
}
