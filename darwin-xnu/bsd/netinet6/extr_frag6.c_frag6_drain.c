
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fq6_head {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* ip6q_next; } ;
struct TYPE_4__ {int ip6s_fragdropped; } ;


 int MBUFQ_DRAIN (struct fq6_head*) ;
 int MBUFQ_EMPTY (struct fq6_head*) ;
 int MBUFQ_INIT (struct fq6_head*) ;
 int VERIFY (int ) ;
 int frag6_freef (TYPE_2__*,struct fq6_head*,struct fq6_head*) ;
 int frag6_icmp6_timeex_error (struct fq6_head*) ;
 TYPE_2__ ip6q ;
 int ip6qlock ;
 TYPE_1__ ip6stat ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
frag6_drain(void)
{
 struct fq6_head dfq6, diq6;

 MBUFQ_INIT(&dfq6);
 MBUFQ_INIT(&diq6);

 lck_mtx_lock(&ip6qlock);
 while (ip6q.ip6q_next != &ip6q) {
  ip6stat.ip6s_fragdropped++;

  frag6_freef(ip6q.ip6q_next, &dfq6, &diq6);
 }
 lck_mtx_unlock(&ip6qlock);


 if (!MBUFQ_EMPTY(&dfq6))
  MBUFQ_DRAIN(&dfq6);

 frag6_icmp6_timeex_error(&diq6);

 VERIFY(MBUFQ_EMPTY(&dfq6));
 VERIFY(MBUFQ_EMPTY(&diq6));
}
