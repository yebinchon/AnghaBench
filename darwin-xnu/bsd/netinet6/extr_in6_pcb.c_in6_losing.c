
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {int rt_flags; int rt_gateway; } ;
struct TYPE_2__ {struct rtentry* ro_rt; } ;
struct inpcb {TYPE_1__ in6p_route; } ;


 int ROUTE_RELEASE (TYPE_1__*) ;
 int RTF_CONDEMNED ;
 int RTF_DYNAMIC ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest (int ,int ,int ,int ,int,int *) ;

void
in6_losing(struct inpcb *in6p)
{
 struct rtentry *rt;

 if ((rt = in6p->in6p_route.ro_rt) != ((void*)0)) {
  RT_LOCK(rt);
  if (rt->rt_flags & RTF_DYNAMIC) {





   rt->rt_flags |= RTF_CONDEMNED;
   RT_UNLOCK(rt);
   (void) rtrequest(RTM_DELETE, rt_key(rt),
       rt->rt_gateway, rt_mask(rt), rt->rt_flags, ((void*)0));
  } else {
   RT_UNLOCK(rt);
  }




 }
 ROUTE_RELEASE(&in6p->in6p_route);
}
