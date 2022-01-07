
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acct_subsys_lck_grp ;
 int acct_subsys_mutex ;
 int lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_alloc_init (int ,int *) ;

void
acct_init(void)
{
 acct_subsys_lck_grp = lck_grp_alloc_init("acct", ((void*)0));
 acct_subsys_mutex = lck_mtx_alloc_init(acct_subsys_lck_grp, ((void*)0));
}
