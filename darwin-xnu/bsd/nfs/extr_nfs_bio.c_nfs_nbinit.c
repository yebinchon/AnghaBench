
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int M_TEMP ;
 int NFS_RWSIZE ;
 int PAGE_SHIFT ;
 int TAILQ_INIT (int *) ;
 int hashinit (int,int ,int *) ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (int ,int ) ;
 int nfs_buf_lck_grp ;
 int nfs_buf_mutex ;
 scalar_t__ nfs_nbdwrite ;
 scalar_t__ nfsbufcnt ;
 int nfsbufdelwri ;
 scalar_t__ nfsbufdelwricnt ;
 int nfsbuffree ;
 scalar_t__ nfsbuffreecnt ;
 int nfsbuffreemeta ;
 scalar_t__ nfsbuffreemetacnt ;
 int nfsbufhash ;
 int nfsbufhashtbl ;
 int nfsbufmax ;
 scalar_t__ nfsbufmetacnt ;
 int nfsbufmetamax ;
 int nfsbufmin ;
 scalar_t__ nfsneedbuffer ;
 int sane_size ;

void
nfs_nbinit(void)
{
 nfs_buf_lck_grp = lck_grp_alloc_init("nfs_buf", LCK_GRP_ATTR_NULL);
 nfs_buf_mutex = lck_mtx_alloc_init(nfs_buf_lck_grp, LCK_ATTR_NULL);

 nfsbufcnt = nfsbufmetacnt =
 nfsbuffreecnt = nfsbuffreemetacnt = nfsbufdelwricnt = 0;
 nfsbufmin = 128;

 nfsbufmax = (sane_size >> PAGE_SHIFT) / (2 * (NFS_RWSIZE >> PAGE_SHIFT));
 nfsbufmetamax = nfsbufmax / 4;
 nfsneedbuffer = 0;
 nfs_nbdwrite = 0;

 nfsbufhashtbl = hashinit(nfsbufmax/4, M_TEMP, &nfsbufhash);
 TAILQ_INIT(&nfsbuffree);
 TAILQ_INIT(&nfsbuffreemeta);
 TAILQ_INIT(&nfsbufdelwri);

}
