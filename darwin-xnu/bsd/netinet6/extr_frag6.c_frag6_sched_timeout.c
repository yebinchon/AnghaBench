
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ frag6_nfragpackets ;
 int frag6_timeout ;
 int frag6_timeout_run ;
 int hz ;
 int ip6qlock ;
 int timeout (int ,int *,int ) ;

__attribute__((used)) static void
frag6_sched_timeout(void)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);

 if (!frag6_timeout_run && frag6_nfragpackets > 0) {
  frag6_timeout_run = 1;
  timeout(frag6_timeout, ((void*)0), hz);
 }
}
