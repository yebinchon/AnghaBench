
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtentry {int dummy; } ;
struct TYPE_4__ {struct rtentry* ro_rt; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct inpcb {TYPE_2__ inp_route; TYPE_1__ inp_laddr; } ;
struct in_ifaddr {int ia_ifa; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int IFA_REMREF (int *) ;
 scalar_t__ INADDR_ANY ;
 int ROUTE_RELEASE (TYPE_2__*) ;
 scalar_t__ TRUE ;
 struct in_ifaddr* ifa_foraddr (scalar_t__) ;

void
in_rtchange(struct inpcb *inp, int errno)
{
#pragma unused(errno)
 boolean_t release = FALSE;
 struct rtentry *rt;

 if ((rt = inp->inp_route.ro_rt) != ((void*)0)) {
  struct in_ifaddr *ia = ((void*)0);


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
