
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct rtentry {int rt_flags; scalar_t__ rt_ifp; TYPE_2__* rt_gateway; TYPE_1__* rt_gwroute; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {scalar_t__ sa_family; } ;
struct TYPE_8__ {int rt_flags; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int RTF_CLONING ;
 int RTF_GATEWAY ;
 int RTF_PRCLONING ;
 int RTF_UP ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 TYPE_2__* SA (struct sockaddr_storage*) ;
 int VERIFY (int) ;
 scalar_t__ equal (TYPE_2__*,TYPE_2__*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 TYPE_2__* rt_key (struct rtentry*) ;
 int rt_set_gwroute (struct rtentry*,TYPE_2__*,struct rtentry*) ;
 int sa_copy (TYPE_2__*,struct sockaddr_storage*,int *) ;

void
rt_revalidate_gwroute(struct rtentry *rt, struct rtentry *gwrt)
{
 VERIFY(gwrt != ((void*)0));

 RT_LOCK_SPIN(rt);
 if ((rt->rt_flags & (RTF_GATEWAY | RTF_UP)) == (RTF_GATEWAY | RTF_UP) &&
     rt->rt_ifp == gwrt->rt_ifp && rt->rt_gateway->sa_family ==
     rt_key(gwrt)->sa_family && (rt->rt_gwroute == ((void*)0) ||
     !(rt->rt_gwroute->rt_flags & RTF_UP))) {
  boolean_t isequal;
  VERIFY(rt->rt_flags & (RTF_CLONING | RTF_PRCLONING));

  if (rt->rt_gateway->sa_family == AF_INET ||
      rt->rt_gateway->sa_family == AF_INET6) {
   struct sockaddr_storage key_ss, gw_ss;




   (void) sa_copy(rt_key(gwrt), &key_ss, ((void*)0));
   (void) sa_copy(rt->rt_gateway, &gw_ss, ((void*)0));

   isequal = equal(SA(&key_ss), SA(&gw_ss));
  } else {
   isequal = equal(rt_key(gwrt), rt->rt_gateway);
  }


  if (isequal) {
   RT_UNLOCK(rt);
   lck_mtx_lock(rnh_lock);
   RT_LOCK(rt);
   rt_set_gwroute(rt, rt_key(rt), gwrt);
   RT_UNLOCK(rt);
   lck_mtx_unlock(rnh_lock);
  } else {
   RT_UNLOCK(rt);
  }
 } else {
  RT_UNLOCK(rt);
 }
}
