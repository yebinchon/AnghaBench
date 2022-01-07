
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtentry {int rt_flags; int rt_gateway; } ;
struct TYPE_4__ {struct rtentry* ro_rt; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {TYPE_2__ inp_route; TYPE_1__ inp_laddr; } ;
struct in_ifaddr {int ia_ifa; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int IFA_REMREF (int *) ;
 scalar_t__ INADDR_ANY ;
 int ROUTE_RELEASE (TYPE_2__*) ;
 int RTF_CONDEMNED ;
 int RTF_DYNAMIC ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 scalar_t__ TRUE ;
 struct in_ifaddr* ifa_foraddr (scalar_t__) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest (int ,int ,int ,int ,int,int *) ;

void
in_losing(struct inpcb *inp)
{
 boolean_t release = FALSE;
 struct rtentry *rt;

 if ((rt = inp->inp_route.ro_rt) != ((void*)0)) {
  struct in_ifaddr *ia = ((void*)0);

  RT_LOCK(rt);
  if (rt->rt_flags & RTF_DYNAMIC) {





   rt->rt_flags |= RTF_CONDEMNED;
   RT_UNLOCK(rt);
   (void) rtrequest(RTM_DELETE, rt_key(rt),
       rt->rt_gateway, rt_mask(rt), rt->rt_flags, ((void*)0));
  } else {
   RT_UNLOCK(rt);
  }

  if (inp->inp_laddr.s_addr != INADDR_ANY &&
      (ia = ifa_foraddr(inp->inp_laddr.s_addr)) != ((void*)0)) {




   release = TRUE;
  }
  if (ia != ((void*)0))
   IFA_REMREF(&ia->ia_ifa);
 }
 if (rt == ((void*)0) || release)
  ROUTE_RELEASE(&inp->inp_route);
}
