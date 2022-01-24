#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  SVC_CTX_HASHSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* nfs_gss_clnt_grp ; 
 int /*<<< orphan*/  nfs_gss_svc_ctx_hash ; 
 int /*<<< orphan*/  nfs_gss_svc_ctx_hashtbl ; 
 int /*<<< orphan*/  nfs_gss_svc_ctx_mutex ; 
 int /*<<< orphan*/  nfs_gss_svc_ctx_timer ; 
 int /*<<< orphan*/  nfs_gss_svc_ctx_timer_call ; 
 void* nfs_gss_svc_grp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
#if NFSCLIENT
	nfs_gss_clnt_grp = lck_grp_alloc_init("rpcsec_gss_clnt", LCK_GRP_ATTR_NULL);
#endif /* NFSCLIENT */

#if NFSSERVER
	nfs_gss_svc_grp  = lck_grp_alloc_init("rpcsec_gss_svc",  LCK_GRP_ATTR_NULL);

	nfs_gss_svc_ctx_hashtbl = hashinit(SVC_CTX_HASHSZ, M_TEMP, &nfs_gss_svc_ctx_hash);
	nfs_gss_svc_ctx_mutex = lck_mtx_alloc_init(nfs_gss_svc_grp, LCK_ATTR_NULL);

	nfs_gss_svc_ctx_timer_call = thread_call_allocate(nfs_gss_svc_ctx_timer, NULL);
#endif /* NFSSERVER */
}