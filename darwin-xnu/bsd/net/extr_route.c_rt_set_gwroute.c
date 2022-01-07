
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; struct rtentry* rt_parent; struct rtentry* rt_gwroute; } ;
typedef int boolean_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_ROUTER ;
 int RTF_WASCLONED ;
 int RT_ADDREF (struct rtentry*) ;
 scalar_t__ RT_HOST (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_REMREF (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 scalar_t__ SA_DEFAULT (struct sockaddr*) ;
 int VERIFY (int) ;
 int rnh_lock ;
 struct sockaddr* rt_key (struct rtentry*) ;
 int rtfree_locked (struct rtentry*) ;

void
rt_set_gwroute(struct rtentry *rt, struct sockaddr *dst, struct rtentry *gwrt)
{
 boolean_t gwrt_isrouter;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);
 RT_LOCK_ASSERT_HELD(rt);

 if (gwrt != ((void*)0))
  RT_ADDREF(gwrt);






 if (rt->rt_gwroute != ((void*)0)) {
  struct rtentry *ogwrt = rt->rt_gwroute;

  VERIFY(rt != ogwrt);
  rt->rt_gwroute = ((void*)0);
  RT_UNLOCK(rt);
  rtfree_locked(ogwrt);
  RT_LOCK(rt);
  VERIFY(rt->rt_gwroute == ((void*)0));
 }




 if ((rt->rt_gwroute = gwrt) != ((void*)0)) {
  RT_ADDREF(gwrt);

  if (rt->rt_flags & RTF_WASCLONED) {

   gwrt_isrouter = (rt->rt_parent != ((void*)0) &&
       SA_DEFAULT(rt_key(rt->rt_parent)) &&
       !RT_HOST(rt->rt_parent));
  } else {
   gwrt_isrouter = (SA_DEFAULT(dst) && !RT_HOST(rt));
  }


  if (gwrt_isrouter && RT_HOST(gwrt) &&
      !(gwrt->rt_flags & RTF_ROUTER)) {
   RT_LOCK(gwrt);
   gwrt->rt_flags |= RTF_ROUTER;
   RT_UNLOCK(gwrt);
  }

  RT_REMREF(gwrt);
 }
}
