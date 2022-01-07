
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int domain_draining ;
 int domain_sched_timeout () ;
 int domain_timeout_mtx ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
net_drain_domains(void)
{
 lck_mtx_lock(&domain_timeout_mtx);
 domain_draining = TRUE;
 domain_sched_timeout();
 lck_mtx_unlock(&domain_timeout_mtx);
}
