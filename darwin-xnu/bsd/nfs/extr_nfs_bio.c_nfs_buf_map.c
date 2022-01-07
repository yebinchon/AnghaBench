
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct nfsbuf {scalar_t__ nb_data; int nb_flags; int nb_pagelist; } ;
typedef scalar_t__ kern_return_t ;


 int EINVAL ;
 int FSDBG (int,struct nfsbuf*,int ,int ,scalar_t__) ;
 int ISSET (int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int NBOFF (struct nfsbuf*) ;
 int NB_PAGELIST ;
 int panic (char*,...) ;
 scalar_t__ ubc_upl_map (int ,int *) ;

int
nfs_buf_map(struct nfsbuf *bp)
{
 kern_return_t kret;

 if (bp->nb_data)
  return (0);
 if (!ISSET(bp->nb_flags, NB_PAGELIST))
  return (EINVAL);

 kret = ubc_upl_map(bp->nb_pagelist, (vm_offset_t *)&(bp->nb_data));
 if (kret != KERN_SUCCESS)
  panic("nfs_buf_map: ubc_upl_map() failed with (%d)", kret);
 if (bp->nb_data == 0)
  panic("ubc_upl_map mapped 0");
 FSDBG(540, bp, bp->nb_flags, NBOFF(bp), bp->nb_data);
 return (0);
}
