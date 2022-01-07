
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6q {struct ip6q* ip6q_next; struct ip6q* ip6q_prev; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int ip6qlock ;

void
frag6_insque(struct ip6q *new, struct ip6q *old)
{
 LCK_MTX_ASSERT(&ip6qlock, LCK_MTX_ASSERT_OWNED);

 new->ip6q_prev = old;
 new->ip6q_next = old->ip6q_next;
 old->ip6q_next->ip6q_prev= new;
 old->ip6q_next = new;
}
