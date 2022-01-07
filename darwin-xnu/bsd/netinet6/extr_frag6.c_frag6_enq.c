
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6asfrag {struct ip6asfrag* ip6af_down; struct ip6asfrag* ip6af_up; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int ip6qlock ;

void
frag6_enq(struct ip6asfrag *af6, struct ip6asfrag *up6)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);

 af6->ip6af_up = up6;
 af6->ip6af_down = up6->ip6af_down;
 up6->ip6af_down->ip6af_up = af6;
 up6->ip6af_down = af6;
}
