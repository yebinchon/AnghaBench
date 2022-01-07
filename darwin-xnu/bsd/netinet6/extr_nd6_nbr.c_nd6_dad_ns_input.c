
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_opt_nonce {int dummy; } ;
struct ifaddr {int dummy; } ;
struct dadq {int dad_lladdrlen; int dad_lladdr; int dad_ns_icount; } ;


 int DAD_LOCK (struct dadq*) ;
 int DAD_REMREF (struct dadq*) ;
 int DAD_UNLOCK (struct dadq*) ;
 int ETHER_ADDR_LEN ;
 int VERIFY (int ) ;
 scalar_t__ dad_enhanced ;
 int memcpy (int ,char*,int) ;
 struct dadq* nd6_dad_find (struct ifaddr*,struct nd_opt_nonce*) ;

__attribute__((used)) static void
nd6_dad_ns_input(struct ifaddr *ifa, char *lladdr,
    int lladdrlen, struct nd_opt_nonce *ndopt_nonce)
{
 struct dadq *dp;
 VERIFY(ifa != ((void*)0));


 if (dad_enhanced == 0)
  ndopt_nonce = ((void*)0);

 dp = nd6_dad_find(ifa, ndopt_nonce);
 if (dp == ((void*)0))
  return;

 DAD_LOCK(dp);
 ++dp->dad_ns_icount;
 if (lladdr && lladdrlen >= ETHER_ADDR_LEN) {
  memcpy(dp->dad_lladdr, lladdr, ETHER_ADDR_LEN);
  dp->dad_lladdrlen = lladdrlen;
 }
 DAD_UNLOCK(dp);
 DAD_REMREF(dp);
}
