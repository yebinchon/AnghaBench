
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; int rt_ifp; int (* rt_if_ref_fn ) (int ,int) ;int * rt_parent; } ;


 int RTF_BROADCAST ;
 int RTF_IFREF ;
 int RTF_MULTICAST ;
 int RTF_NOIFREF ;
 int RTF_UP ;
 int RTF_WASCLONED ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int rt_clear_idleref (struct rtentry*) ;
 int rte_if_ref (int ,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
rt_set_idleref(struct rtentry *rt)
{
 RT_LOCK_ASSERT_HELD(rt);





 if (rt->rt_parent != ((void*)0) && !(rt->rt_flags &
     (RTF_NOIFREF|RTF_BROADCAST | RTF_MULTICAST)) &&
     (rt->rt_flags & (RTF_UP|RTF_WASCLONED|RTF_IFREF)) ==
     (RTF_UP|RTF_WASCLONED)) {
  rt_clear_idleref(rt);
  rt->rt_if_ref_fn = rte_if_ref;

  RT_CONVERT_LOCK(rt);
  rt->rt_if_ref_fn(rt->rt_ifp, 1);
  rt->rt_flags |= RTF_IFREF;
 }
}
