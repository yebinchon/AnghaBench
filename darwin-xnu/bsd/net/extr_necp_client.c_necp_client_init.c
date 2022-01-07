
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct necp_fd_data {int dummy; } ;
struct necp_client_flow_registration {int dummy; } ;
struct necp_client_flow {int dummy; } ;
typedef int errno_t ;


 int LIST_INIT (int *) ;
 int MCR_SLEEP ;
 int NECP_CLIENT_FD_ZONE_MAX ;
 int NECP_CLIENT_FD_ZONE_NAME ;
 int NECP_FLOW_REGISTRATION_ZONE_NAME ;
 int NECP_FLOW_ZONE_NAME ;
 int RB_INIT (int *) ;
 int THREAD_CALL_OPTIONS_ONCE ;
 int THREAD_CALL_PRIORITY_KERNEL ;
 int VERIFY (int ) ;
 int * lck_attr_alloc_init () ;
 int * lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_rw_init (int *,int *,int *) ;
 void* mcache_create (int ,int,int,int ,int ) ;
 int necp_client_fd_size ;
 int * necp_client_fd_zone ;
 int necp_client_flow_global_tree ;
 int necp_client_global_tree ;
 int necp_client_tree_lock ;
 int * necp_client_update_tcall ;
 int necp_collect_stats_flow_list ;
 int necp_collect_stats_list_lock ;
 int * necp_fd_grp_attr ;
 int necp_fd_list ;
 int necp_fd_lock ;
 int * necp_fd_mtx_attr ;
 int * necp_fd_mtx_grp ;
 int necp_fd_observer_list ;
 int * necp_flow_cache ;
 int * necp_flow_registration_cache ;
 int necp_flow_registration_size ;
 int necp_flow_size ;
 int necp_flow_tree_lock ;
 int necp_observer_lock ;
 int necp_update_all_clients_callout ;
 int panic (char*) ;
 int * thread_call_allocate_with_options (int ,int *,int ,int ) ;
 int * zinit (int,int,int ,int ) ;

errno_t
necp_client_init(void)
{
 necp_fd_grp_attr = lck_grp_attr_alloc_init();
 if (necp_fd_grp_attr == ((void*)0)) {
  panic("lck_grp_attr_alloc_init failed\n");

 }

 necp_fd_mtx_grp = lck_grp_alloc_init("necp_fd", necp_fd_grp_attr);
 if (necp_fd_mtx_grp == ((void*)0)) {
  panic("lck_grp_alloc_init failed\n");

 }

 necp_fd_mtx_attr = lck_attr_alloc_init();
 if (necp_fd_mtx_attr == ((void*)0)) {
  panic("lck_attr_alloc_init failed\n");

 }

 necp_client_fd_size = sizeof(struct necp_fd_data);
 necp_client_fd_zone = zinit(necp_client_fd_size,
        NECP_CLIENT_FD_ZONE_MAX * necp_client_fd_size,
        0, NECP_CLIENT_FD_ZONE_NAME);
 if (necp_client_fd_zone == ((void*)0)) {
  panic("zinit(necp_client_fd) failed\n");

 }

 necp_flow_size = sizeof(struct necp_client_flow);
 necp_flow_cache = mcache_create(NECP_FLOW_ZONE_NAME, necp_flow_size, sizeof (uint64_t), 0, MCR_SLEEP);
 if (necp_flow_cache == ((void*)0)) {
  panic("mcache_create(necp_flow_cache) failed\n");

 }

 necp_flow_registration_size = sizeof(struct necp_client_flow_registration);
 necp_flow_registration_cache = mcache_create(NECP_FLOW_REGISTRATION_ZONE_NAME, necp_flow_registration_size, sizeof (uint64_t), 0, MCR_SLEEP);
 if (necp_flow_registration_cache == ((void*)0)) {
  panic("mcache_create(necp_client_flow_registration) failed\n");

 }

 necp_client_update_tcall = thread_call_allocate_with_options(necp_update_all_clients_callout, ((void*)0),
                 THREAD_CALL_PRIORITY_KERNEL, THREAD_CALL_OPTIONS_ONCE);
 VERIFY(necp_client_update_tcall != ((void*)0));

 lck_rw_init(&necp_fd_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
 lck_rw_init(&necp_observer_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
 lck_rw_init(&necp_client_tree_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
    lck_rw_init(&necp_flow_tree_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
 lck_rw_init(&necp_collect_stats_list_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);

 LIST_INIT(&necp_fd_list);
 LIST_INIT(&necp_fd_observer_list);
 LIST_INIT(&necp_collect_stats_flow_list);

 RB_INIT(&necp_client_global_tree);
 RB_INIT(&necp_client_flow_global_tree);

 return (0);
}
