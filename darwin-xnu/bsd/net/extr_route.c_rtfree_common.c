
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtentry_dbg {int dummy; } ;
struct rtentry {scalar_t__ rt_refcnt; int rt_flags; int rt_evhdlr_ctxt; TYPE_2__* rt_llinfo; int (* rt_llinfo_free ) (TYPE_2__*) ;struct ifaddr* rt_ifa; struct rtentry* rt_parent; TYPE_1__* rt_nodes; } ;
struct radix_node_head {int (* rnh_close ) (struct radix_node*,struct radix_node_head*) ;} ;
struct radix_node {int dummy; } ;
struct ifaddr {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {size_t sa_family; } ;
struct TYPE_5__ {int rn_flags; } ;


 int IFA_REMREF (struct ifaddr*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int OSDecrementAtomic (int *) ;
 int RNF_ACTIVE ;
 int RNF_ROOT ;
 int RTD_DEBUG ;
 int RTF_DEAD ;
 int RTF_IFREF ;
 int RTF_UP ;
 int RT_ADDREF_LOCKED (struct rtentry*) ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int R_Free (TYPE_2__*) ;
 int TAILQ_REMOVE (int *,struct rtentry_dbg*,int ) ;
 int VERIFY (int) ;
 int eventhandler_lists_ctxt_destroy (int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nstat_route_detach (struct rtentry*) ;
 int panic (char*,struct rtentry*,...) ;
 int rnh_lock ;
 TYPE_2__* rt_key (struct rtentry*) ;
 struct radix_node_head** rt_tables ;
 int rtd_trash_link ;
 int rte_debug ;
 int rte_free (struct rtentry*) ;
 int rte_lock_destroy (struct rtentry*) ;
 int rtfree_locked (struct rtentry*) ;
 int rttrash ;
 int rttrash_head ;
 scalar_t__ rtunref (struct rtentry*) ;
 int stub1 (struct radix_node*,struct radix_node_head*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void
rtfree_common(struct rtentry *rt, boolean_t locked)
{
 struct radix_node_head *rnh;

 LCK_MTX_ASSERT(rnh_lock, locked ?
     LCK_MTX_ASSERT_OWNED : LCK_MTX_ASSERT_NOTOWNED);





 RT_LOCK_SPIN(rt);
 if (rtunref(rt) > 0) {
  RT_UNLOCK(rt);
  return;
 }







 if (!locked) {
  RT_ADDREF_LOCKED(rt);
  RT_UNLOCK(rt);
  lck_mtx_lock(rnh_lock);
  RT_LOCK_SPIN(rt);
  if (rtunref(rt) > 0) {

   RT_UNLOCK(rt);
   goto done;
  }
 }





 RT_CONVERT_LOCK(rt);

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);


 if (rt->rt_refcnt != 0) {
  panic("rt %p invalid refcnt %d", rt, rt->rt_refcnt);

 }

 VERIFY(!(rt->rt_flags & RTF_IFREF));





 rnh = rt_tables[rt_key(rt)->sa_family];
 if (rnh != ((void*)0) && rnh->rnh_close != ((void*)0))
  rnh->rnh_close((struct radix_node *)rt, rnh);





 if (!(rt->rt_flags & RTF_UP)) {
  struct rtentry *rt_parent;
  struct ifaddr *rt_ifa;

  rt->rt_flags |= RTF_DEAD;
  if (rt->rt_nodes->rn_flags & (RNF_ACTIVE | RNF_ROOT)) {
   panic("rt %p freed while in radix tree\n", rt);

  }




  (void) OSDecrementAtomic(&rttrash);
  if (rte_debug & RTD_DEBUG) {
   TAILQ_REMOVE(&rttrash_head, (struct rtentry_dbg *)rt,
       rtd_trash_link);
  }





  if ((rt_parent = rt->rt_parent) != ((void*)0))
   rt->rt_parent = ((void*)0);

  if ((rt_ifa = rt->rt_ifa) != ((void*)0))
   rt->rt_ifa = ((void*)0);




  if (rt->rt_llinfo != ((void*)0)) {
   if (rt->rt_llinfo_free != ((void*)0))
    (*rt->rt_llinfo_free)(rt->rt_llinfo);
   else
    R_Free(rt->rt_llinfo);
   rt->rt_llinfo = ((void*)0);
  }


  eventhandler_lists_ctxt_destroy(&rt->rt_evhdlr_ctxt);





  RT_UNLOCK(rt);
  rte_lock_destroy(rt);

  if (rt_parent != ((void*)0))
   rtfree_locked(rt_parent);

  if (rt_ifa != ((void*)0))
   IFA_REMREF(rt_ifa);






  R_Free(rt_key(rt));




  nstat_route_detach(rt);




  rte_free(rt);
 } else {





  RT_UNLOCK(rt);
 }
done:
 if (!locked)
  lck_mtx_unlock(rnh_lock);
}
