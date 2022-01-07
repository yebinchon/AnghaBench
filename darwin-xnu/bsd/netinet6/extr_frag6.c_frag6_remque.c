
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip6q {TYPE_2__* ip6q_prev; TYPE_1__* ip6q_next; } ;
struct TYPE_4__ {TYPE_1__* ip6q_next; } ;
struct TYPE_3__ {TYPE_2__* ip6q_prev; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int ip6qlock ;

void
frag6_remque(struct ip6q *p6)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);

 p6->ip6q_prev->ip6q_next = p6->ip6q_next;
 p6->ip6q_next->ip6q_prev = p6->ip6q_prev;
}
