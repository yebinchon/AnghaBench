
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct route {int ro_rt; } ;
struct inpcb {int inp_socket; struct route inp_route; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 int ROUTE_RELEASE (struct route*) ;
 scalar_t__ ROUTE_UNUSABLE (struct route*) ;
 int route_copyout (struct route*,struct route*,int) ;
 TYPE_1__* rt_key (int ) ;
 int socket_lock_assert_owned (int ) ;

void
inp_route_copyout(struct inpcb *inp, struct route *dst)
{
 struct route *src = &inp->inp_route;

 socket_lock_assert_owned(inp->inp_socket);





 if (ROUTE_UNUSABLE(src) || rt_key(src->ro_rt)->sa_family != AF_INET)
  ROUTE_RELEASE(src);

 route_copyout(dst, src, sizeof (*dst));
}
