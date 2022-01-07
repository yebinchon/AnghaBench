
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__ rmx_expire; } ;
struct rtentry {int rt_flags; scalar_t__ rt_expire; TYPE_2__ rt_rmx; struct rtentry* rt_parent; TYPE_3__* rt_gateway; struct rtentry* rt_gwroute; TYPE_1__* rt_ifp; } ;
typedef int ss ;
typedef int errno_t ;
typedef int boolean_t ;
struct TYPE_7__ {int sa_len; } ;
struct TYPE_5__ {unsigned int if_index; } ;


 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int MIN (int,int ) ;
 int RTF_GATEWAY ;
 int RTF_REJECT ;
 int RTF_UP ;
 int RTF_WASCLONED ;
 int RT_ADDREF (struct rtentry*) ;
 int RT_ADDREF_LOCKED (struct rtentry*) ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_REMREF (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int VERIFY (int) ;
 int bcopy (TYPE_3__*,struct sockaddr*,int ) ;
 int equal (struct sockaddr*,TYPE_3__*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ net_uptime () ;
 int rnh_lock ;
 int rt_key (struct rtentry*) ;
 int rt_revalidate_gwroute (struct rtentry*,struct rtentry*) ;
 int rt_set_gwroute (struct rtentry*,int ,struct rtentry*) ;
 struct rtentry* rtalloc1_scoped (struct sockaddr*,int,int ,unsigned int) ;
 struct rtentry* rtalloc1_scoped_locked (struct sockaddr*,int,int ,unsigned int) ;
 int rtfree (struct rtentry*) ;
 int rtfree_locked (struct rtentry*) ;
 int senderr (int ) ;

errno_t
route_to_gwroute(const struct sockaddr *net_dest, struct rtentry *hint0,
    struct rtentry **out_route)
{
 uint64_t timenow;
 struct rtentry *rt = hint0, *hint = hint0;
 errno_t error = 0;
 unsigned int ifindex;
 boolean_t gwroute;

 *out_route = ((void*)0);

 if (rt == ((void*)0))
  return (0);
 RT_LOCK_SPIN(rt);
 ifindex = rt->rt_ifp->if_index;
 RT_ADDREF_LOCKED(rt);
 if (!(rt->rt_flags & RTF_UP)) {
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);

  hint = rt = rtalloc1_scoped((struct sockaddr *)
      (size_t)net_dest, 1, 0, ifindex);
  if (hint != ((void*)0)) {
   RT_LOCK_SPIN(rt);
   ifindex = rt->rt_ifp->if_index;
  } else {
   senderr(EHOSTUNREACH);
  }
 }





 RT_LOCK_ASSERT_HELD(rt);
 if ((gwroute = (rt->rt_flags & RTF_GATEWAY))) {
  struct rtentry *gwrt = rt->rt_gwroute;
  struct sockaddr_storage ss;
  struct sockaddr *gw = (struct sockaddr *)&ss;

  VERIFY(rt == hint);
  RT_ADDREF_LOCKED(hint);


  if (gwrt == ((void*)0)) {
   bcopy(rt->rt_gateway, gw, MIN(sizeof (ss),
       rt->rt_gateway->sa_len));
   RT_UNLOCK(rt);
   goto lookup;
  }

  RT_CONVERT_LOCK(rt);






  RT_LOCK_SPIN(gwrt);
  if (!(gwrt->rt_flags & RTF_UP)) {
   rt->rt_gwroute = ((void*)0);
   RT_UNLOCK(gwrt);
   bcopy(rt->rt_gateway, gw, MIN(sizeof (ss),
       rt->rt_gateway->sa_len));
   RT_UNLOCK(rt);
   rtfree(gwrt);
lookup:
   lck_mtx_lock(rnh_lock);
   gwrt = rtalloc1_scoped_locked(gw, 1, 0, ifindex);

   RT_LOCK(rt);





   if (!(rt->rt_flags & RTF_UP) || gwrt == ((void*)0) ||
       gwrt == rt || !equal(gw, rt->rt_gateway)) {
    if (gwrt == rt) {
     RT_REMREF_LOCKED(gwrt);
     gwrt = ((void*)0);
    }
    VERIFY(rt == hint);
    RT_REMREF_LOCKED(hint);
    hint = ((void*)0);
    RT_UNLOCK(rt);
    if (gwrt != ((void*)0))
     rtfree_locked(gwrt);
    lck_mtx_unlock(rnh_lock);
    senderr(EHOSTUNREACH);
   }
   VERIFY(gwrt != ((void*)0));





   rt_set_gwroute(rt, rt_key(rt), gwrt);
   VERIFY(rt == hint);
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
   lck_mtx_unlock(rnh_lock);
   rt = gwrt;
  } else {
   RT_ADDREF_LOCKED(gwrt);
   RT_UNLOCK(gwrt);
   VERIFY(rt == hint);
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
   rt = gwrt;
  }
  VERIFY(rt == gwrt && rt != hint);







  RT_LOCK_SPIN(hint);
  if ((hint->rt_flags & (RTF_WASCLONED | RTF_UP)) ==
      (RTF_WASCLONED | RTF_UP)) {
   struct rtentry *prt = hint->rt_parent;
   VERIFY(prt != ((void*)0));

   RT_CONVERT_LOCK(hint);
   RT_ADDREF(prt);
   RT_UNLOCK(hint);
   rt_revalidate_gwroute(prt, rt);
   RT_REMREF(prt);
  } else {
   RT_UNLOCK(hint);
  }


  if (hint == hint0)
   RT_REMREF(hint);
  else
   rtfree(hint);
  hint = ((void*)0);


  RT_LOCK_SPIN(rt);
  if (!(rt->rt_flags & RTF_UP)) {
   RT_UNLOCK(rt);
   senderr(EHOSTUNREACH);
  }
 }

 if (rt->rt_flags & RTF_REJECT) {
  VERIFY(rt->rt_expire == 0 || rt->rt_rmx.rmx_expire != 0);
  VERIFY(rt->rt_expire != 0 || rt->rt_rmx.rmx_expire == 0);
  timenow = net_uptime();
  if (rt->rt_expire == 0 || timenow < rt->rt_expire) {
   RT_UNLOCK(rt);
   senderr(!gwroute ? EHOSTDOWN : EHOSTUNREACH);
  }
 }


 RT_CONVERT_LOCK(rt);


 *out_route = rt;
 return (0);

bad:

 if (rt != ((void*)0)) {
  RT_LOCK_SPIN(rt);
  if (rt == hint0) {
   RT_REMREF_LOCKED(rt);
   RT_UNLOCK(rt);
  } else {
   RT_UNLOCK(rt);
   rtfree(rt);
  }
 }
 return (error);
}
