
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip6asfrag {TYPE_2__* ip6af_up; TYPE_1__* ip6af_down; } ;
struct TYPE_4__ {TYPE_1__* ip6af_down; } ;
struct TYPE_3__ {TYPE_2__* ip6af_up; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int ip6qlock ;

void
frag6_deq(struct ip6asfrag *af6)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);

 af6->ip6af_up->ip6af_down = af6->ip6af_down;
 af6->ip6af_down->ip6af_up = af6->ip6af_up;
}
