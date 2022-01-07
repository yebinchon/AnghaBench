
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_mship {int i6mm_maddr; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int ENOBUFS ;
 int M_WAITOK ;
 int in6_mc_join (struct ifnet*,struct in6_addr*,int *,int *,int) ;
 struct in6_multi_mship* in6_multi_mship_alloc (int ) ;
 int in6_multi_mship_free (struct in6_multi_mship*) ;

struct in6_multi_mship *
in6_joingroup(struct ifnet *ifp, struct in6_addr *mcaddr,
    int *errorp, int delay)
{
 struct in6_multi_mship *imm;
 int error;

 *errorp = 0;

 imm = in6_multi_mship_alloc(M_WAITOK);
 if (imm == ((void*)0)) {
  *errorp = ENOBUFS;
  return (((void*)0));
 }

 error = in6_mc_join(ifp, mcaddr, ((void*)0), &imm->i6mm_maddr, delay);
 if (error) {
  *errorp = error;
  in6_multi_mship_free(imm);
  return (((void*)0));
 }

 return (imm);
}
