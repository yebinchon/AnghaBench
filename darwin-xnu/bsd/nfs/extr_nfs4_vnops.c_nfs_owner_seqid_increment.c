
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_owner {int noo_seqid; } ;
struct nfs_lock_owner {int nlo_seqid; } ;
void
nfs_owner_seqid_increment(struct nfs_open_owner *noop, struct nfs_lock_owner *nlop, int error)
{
 switch (error) {
 case 129:
 case 128:
 case 131:
 case 133:
 case 134:
 case 135:
 case 130:
 case 132:

  return;
 }
 if (noop)
  noop->noo_seqid++;
 if (nlop)
  nlop->nlo_seqid++;
}
