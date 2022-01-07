
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ TRUE ;
 scalar_t__ domain_draining ;
 int domain_timeout ;
 int domain_timeout_mtx ;
 scalar_t__ domain_timeout_run ;
 int hz ;
 int timeout (int ,int *,int ) ;

__attribute__((used)) static void
domain_sched_timeout(void)
{
 LCK_MTX_ASSERT(&domain_timeout_mtx, LCK_MTX_ASSERT_OWNED);

 if (!domain_timeout_run && domain_draining) {
  domain_timeout_run = TRUE;
  timeout(domain_timeout, ((void*)0), hz);
 }
}
