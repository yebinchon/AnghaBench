
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; int (* rt_if_ref_fn ) (int ,int) ;int rt_ifp; } ;


 int RTF_IFREF ;
 int RTF_NOIFREF ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int VERIFY (int) ;
 int stub1 (int ,int) ;

void
rt_clear_idleref(struct rtentry *rt)
{
 RT_LOCK_ASSERT_HELD(rt);

 if (rt->rt_if_ref_fn != ((void*)0)) {
  VERIFY((rt->rt_flags & (RTF_NOIFREF | RTF_IFREF)) == RTF_IFREF);

  RT_CONVERT_LOCK(rt);
  rt->rt_if_ref_fn(rt->rt_ifp, -1);
  rt->rt_flags &= ~RTF_IFREF;
  rt->rt_if_ref_fn = ((void*)0);
 }
}
