
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6q {int dummy; } ;


 int atomic_add_32 (int *,int) ;
 int dtom (struct ip6q*) ;
 int ip6q_count ;
 int m_free (int ) ;

__attribute__((used)) static void
ip6q_free(struct ip6q *q6)
{
 (void) m_free(dtom(q6));
 atomic_add_32(&ip6q_count, -1);
}
