
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip6q {int dummy; } ;
struct ip6asfrag {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* ip6q_prev; struct TYPE_2__* ip6q_next; } ;


 int _CASSERT (int) ;
 int _MLEN ;
 int ip6_maxfragpackets ;
 int ip6_maxfrags ;
 TYPE_1__ ip6q ;
 int ip6q_updateparams () ;
 int ip6qlock ;
 int ip6qlock_attr ;
 int ip6qlock_grp ;
 int ip6qlock_grp_attr ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nmbclusters ;

void
frag6_init(void)
{

 _CASSERT(sizeof (struct ip6q) <= _MLEN);

 _CASSERT(sizeof (struct ip6asfrag) <= _MLEN);


 ip6qlock_grp_attr = lck_grp_attr_alloc_init();
 ip6qlock_grp = lck_grp_alloc_init("ip6qlock", ip6qlock_grp_attr);
 ip6qlock_attr = lck_attr_alloc_init();
 lck_mtx_init(&ip6qlock, ip6qlock_grp, ip6qlock_attr);

 lck_mtx_lock(&ip6qlock);

 ip6q.ip6q_next = ip6q.ip6q_prev = &ip6q;


 ip6_maxfragpackets = nmbclusters / 32;
 ip6_maxfrags = ip6_maxfragpackets * 2;
 ip6q_updateparams();
 lck_mtx_unlock(&ip6qlock);
}
