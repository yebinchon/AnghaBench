
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsbuf {int nb_refs; } ;



void
nfs_buf_refrele(struct nfsbuf *bp)
{
 bp->nb_refs--;
}
