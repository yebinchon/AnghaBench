
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nfsa_flags; int nfsa_bitmap; int nfsa_maxname; int nfsa_maxlink; } ;
struct nfsmount {int nm_state; TYPE_1__ nm_fsattr; } ;
struct nfs_fsattr {int nfsa_flags; int nfsa_maxname; int nfsa_maxlink; } ;


 int NFSSTA_GOTPATHCONF ;
 int NFS_BITMAP_SET (int ,int ) ;
 int NFS_FATTR_CASE_INSENSITIVE ;
 int NFS_FATTR_CASE_PRESERVING ;
 int NFS_FATTR_CHOWN_RESTRICTED ;
 int NFS_FATTR_MAXLINK ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FATTR_NO_TRUNC ;
 int NFS_FSFLAG_CASE_INSENSITIVE ;
 int NFS_FSFLAG_CASE_PRESERVING ;
 int NFS_FSFLAG_CHOWN_RESTRICTED ;
 int NFS_FSFLAG_NO_TRUNC ;

void
nfs3_pathconf_cache(struct nfsmount *nmp, struct nfs_fsattr *nfsap)
{
 nmp->nm_fsattr.nfsa_maxlink = nfsap->nfsa_maxlink;
 nmp->nm_fsattr.nfsa_maxname = nfsap->nfsa_maxname;
 nmp->nm_fsattr.nfsa_flags &= ~(NFS_FSFLAG_NO_TRUNC|NFS_FSFLAG_CHOWN_RESTRICTED|NFS_FSFLAG_CASE_INSENSITIVE|NFS_FSFLAG_CASE_PRESERVING);
 nmp->nm_fsattr.nfsa_flags |= nfsap->nfsa_flags & NFS_FSFLAG_NO_TRUNC;
 nmp->nm_fsattr.nfsa_flags |= nfsap->nfsa_flags & NFS_FSFLAG_CHOWN_RESTRICTED;
 nmp->nm_fsattr.nfsa_flags |= nfsap->nfsa_flags & NFS_FSFLAG_CASE_INSENSITIVE;
 nmp->nm_fsattr.nfsa_flags |= nfsap->nfsa_flags & NFS_FSFLAG_CASE_PRESERVING;
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXLINK);
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXNAME);
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_NO_TRUNC);
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_CHOWN_RESTRICTED);
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_CASE_INSENSITIVE);
 NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_CASE_PRESERVING);
 nmp->nm_state |= NFSSTA_GOTPATHCONF;
}
