
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 void* lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (void*,int ) ;
 void* nfs_data_lck_grp ;
 void* nfs_node_hash_lck_grp ;
 int nfs_node_hash_mutex ;
 void* nfs_node_lck_grp ;

void
nfs_nhinit(void)
{
 nfs_node_hash_lck_grp = lck_grp_alloc_init("nfs_node_hash", LCK_GRP_ATTR_NULL);
 nfs_node_hash_mutex = lck_mtx_alloc_init(nfs_node_hash_lck_grp, LCK_ATTR_NULL);
 nfs_node_lck_grp = lck_grp_alloc_init("nfs_node", LCK_GRP_ATTR_NULL);
 nfs_data_lck_grp = lck_grp_alloc_init("nfs_data", LCK_GRP_ATTR_NULL);
}
