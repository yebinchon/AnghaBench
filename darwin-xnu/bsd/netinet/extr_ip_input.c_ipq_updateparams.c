
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int frag_sched_timeout () ;
 int ipq_limit ;
 int ipqlock ;
 scalar_t__ maxnipq ;

__attribute__((used)) static void
ipq_updateparams(void)
{
 LCK_MTX_ASSERT(&ipqlock, LCK_MTX_ASSERT_OWNED);



 if (maxnipq < 0)
  ipq_limit = 0;



 if (maxnipq > 0)
  ipq_limit = maxnipq;





 if (maxnipq == 0)
  ipq_limit = 1;



 frag_sched_timeout();
}
