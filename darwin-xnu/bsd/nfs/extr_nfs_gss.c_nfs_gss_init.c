
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int M_TEMP ;
 int SVC_CTX_HASHSZ ;
 int hashinit (int ,int ,int *) ;
 void* lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (void*,int ) ;
 void* nfs_gss_clnt_grp ;
 int nfs_gss_svc_ctx_hash ;
 int nfs_gss_svc_ctx_hashtbl ;
 int nfs_gss_svc_ctx_mutex ;
 int nfs_gss_svc_ctx_timer ;
 int nfs_gss_svc_ctx_timer_call ;
 void* nfs_gss_svc_grp ;
 int thread_call_allocate (int ,int *) ;

void
nfs_gss_init(void)
{
}
