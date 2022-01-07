
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip6q {TYPE_2__* ip6q_prev; struct ip6q* ip6q_next; int ip6q_ttl; } ;
struct fq6_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip6q_ttl; } ;
struct TYPE_3__ {int ip6s_fragoverflow; int ip6s_fragtimeout; } ;


 int MBUFQ_DRAIN (struct fq6_head*) ;
 int MBUFQ_EMPTY (struct fq6_head*) ;
 int MBUFQ_INIT (struct fq6_head*) ;
 int VERIFY (int ) ;
 int frag6_freef (TYPE_2__*,struct fq6_head*,struct fq6_head*) ;
 int frag6_icmp6_timeex_error (struct fq6_head*) ;
 unsigned int frag6_nfragpackets ;
 int frag6_sched_timeout () ;
 scalar_t__ frag6_timeout_run ;
 scalar_t__ ip6_maxfragpackets ;
 struct ip6q ip6q ;
 int ip6qlock ;
 TYPE_1__ ip6stat ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int net_update_uptime () ;

__attribute__((used)) static void
frag6_timeout(void *arg)
{
#pragma unused(arg)
 struct fq6_head dfq6, diq6;
 struct ip6q *q6;

 MBUFQ_INIT(&dfq6);
 MBUFQ_INIT(&diq6);






 net_update_uptime();

 lck_mtx_lock(&ip6qlock);
 q6 = ip6q.ip6q_next;
 if (q6)
  while (q6 != &ip6q) {
   --q6->ip6q_ttl;
   q6 = q6->ip6q_next;
   if (q6->ip6q_prev->ip6q_ttl == 0) {
    ip6stat.ip6s_fragtimeout++;

    frag6_freef(q6->ip6q_prev, &dfq6, &diq6);
   }
  }





 if (ip6_maxfragpackets >= 0) {
  while (frag6_nfragpackets > (unsigned)ip6_maxfragpackets &&
      ip6q.ip6q_prev) {
   ip6stat.ip6s_fragoverflow++;

   frag6_freef(ip6q.ip6q_prev, &dfq6, &diq6);
  }
 }

 frag6_timeout_run = 0;
 frag6_sched_timeout();
 lck_mtx_unlock(&ip6qlock);


 if (!MBUFQ_EMPTY(&dfq6))
  MBUFQ_DRAIN(&dfq6);

 frag6_icmp6_timeex_error(&diq6);

 VERIFY(MBUFQ_EMPTY(&dfq6));
 VERIFY(MBUFQ_EMPTY(&diq6));
}
