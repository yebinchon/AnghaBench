
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_addr; } ;
struct nd_prefix {scalar_t__ ndpr_ifp; scalar_t__ ndpr_plen; int ndpr_expire; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;


 int ND6_PREFIX_EXPIRY_UNSPEC ;
 int NDPR_ADDREF_LOCKED (struct nd_prefix*) ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 scalar_t__ in6_are_prefix_equal (int *,int *,scalar_t__) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;
 TYPE_2__ nd_prefix ;

struct nd_prefix *
nd6_prefix_lookup(struct nd_prefix *pr, int nd6_prefix_expiry)
{
 struct nd_prefix *search;

 lck_mtx_lock(nd6_mutex);
 for (search = nd_prefix.lh_first; search; search = search->ndpr_next) {
  NDPR_LOCK(search);
  if (pr->ndpr_ifp == search->ndpr_ifp &&
      pr->ndpr_plen == search->ndpr_plen &&
      in6_are_prefix_equal(&pr->ndpr_prefix.sin6_addr,
      &search->ndpr_prefix.sin6_addr, pr->ndpr_plen)) {
   if (nd6_prefix_expiry != ND6_PREFIX_EXPIRY_UNSPEC) {
    search->ndpr_expire = nd6_prefix_expiry;
   }
   NDPR_ADDREF_LOCKED(search);
   NDPR_UNLOCK(search);
   break;
  }
  NDPR_UNLOCK(search);
 }
 lck_mtx_unlock(nd6_mutex);

 return (search);
}
