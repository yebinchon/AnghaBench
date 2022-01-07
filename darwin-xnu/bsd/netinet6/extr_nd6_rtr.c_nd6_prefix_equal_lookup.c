
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; int ndpr_plen; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
typedef int boolean_t ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NDPRF_IFSCOPE ;
 int NDPRF_ONLINK ;
 int NDPR_ADDREF_LOCKED (struct nd_prefix*) ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 scalar_t__ in6_are_prefix_equal (int *,int *,int ) ;
 int nd6_mutex ;
 TYPE_2__ nd_prefix ;

__attribute__((used)) static struct nd_prefix *
nd6_prefix_equal_lookup(struct nd_prefix *pr, boolean_t primary_only)
{
 struct nd_prefix *opr;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);

 for (opr = nd_prefix.lh_first; opr; opr = opr->ndpr_next) {
  if (opr == pr)
   continue;

  NDPR_LOCK(opr);
  if ((opr->ndpr_stateflags & NDPRF_ONLINK) == 0) {
   NDPR_UNLOCK(opr);
   continue;
  }
  if (opr->ndpr_plen == pr->ndpr_plen &&
      in6_are_prefix_equal(&pr->ndpr_prefix.sin6_addr,
      &opr->ndpr_prefix.sin6_addr, pr->ndpr_plen) &&
      (!primary_only ||
      !(opr->ndpr_stateflags & NDPRF_IFSCOPE))) {
   NDPR_ADDREF_LOCKED(opr);
   NDPR_UNLOCK(opr);
   return (opr);
  }
  NDPR_UNLOCK(opr);
 }
 return (((void*)0));
}
