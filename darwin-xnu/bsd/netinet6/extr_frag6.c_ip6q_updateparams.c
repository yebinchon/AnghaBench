
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int frag6_sched_timeout () ;
 scalar_t__ ip6_maxfragpackets ;
 scalar_t__ ip6_maxfrags ;
 int ip6af_limit ;
 int ip6q_limit ;
 int ip6qlock ;

__attribute__((used)) static void
ip6q_updateparams(void)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);



 if (ip6_maxfragpackets < 0)
  ip6q_limit = 0;
 if (ip6_maxfrags < 0)
  ip6af_limit = 0;



 if (ip6_maxfragpackets > 0)
  ip6q_limit = ip6_maxfragpackets;
 if (ip6_maxfrags > 0)
  ip6af_limit = ip6_maxfrags;





 if (ip6_maxfragpackets == 0)
  ip6q_limit = 1;
 if (ip6_maxfrags == 0)
  ip6af_limit = 1;



 frag6_sched_timeout();
}
