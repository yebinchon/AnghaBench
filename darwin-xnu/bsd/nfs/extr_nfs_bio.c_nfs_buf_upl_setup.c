
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * upl_t ;
struct nfsbuf {int nb_flags; int * nb_pagelist; int nb_np; int nb_bufsize; } ;
typedef scalar_t__ kern_return_t ;


 int EINVAL ;
 int EIO ;
 int FSDBG (int,struct nfsbuf*,int ,int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int NBOFF (struct nfsbuf*) ;
 int NB_PAGELIST ;
 int NB_READ ;
 int NFSTOV (int ) ;
 int SET (int ,int ) ;
 int UPL_PRECIOUS ;
 int UPL_WILL_MODIFY ;
 int VM_KERN_MEMORY_FILE ;
 int printf (char*,scalar_t__) ;
 scalar_t__ ubc_create_upl_kernel (int ,int ,int ,int **,int *,int,int ) ;

int
nfs_buf_upl_setup(struct nfsbuf *bp)
{
 kern_return_t kret;
 upl_t upl;
 int upl_flags;

 if (ISSET(bp->nb_flags, NB_PAGELIST))
  return (0);

 upl_flags = UPL_PRECIOUS;
 if (!ISSET(bp->nb_flags, NB_READ)) {




  upl_flags |= UPL_WILL_MODIFY;
 }
 kret = ubc_create_upl_kernel(NFSTOV(bp->nb_np), NBOFF(bp), bp->nb_bufsize,
    &upl, ((void*)0), upl_flags, VM_KERN_MEMORY_FILE);
 if (kret == KERN_INVALID_ARGUMENT) {

  bp->nb_pagelist = ((void*)0);
  return (EINVAL);
 }
 if (kret != KERN_SUCCESS) {
  printf("nfs_buf_upl_setup(): failed to get pagelist %d\n", kret);
  bp->nb_pagelist = ((void*)0);
  return (EIO);
 }

 FSDBG(538, bp, NBOFF(bp), bp->nb_bufsize, bp->nb_np);

 bp->nb_pagelist = upl;
 SET(bp->nb_flags, NB_PAGELIST);
 return (0);
}
