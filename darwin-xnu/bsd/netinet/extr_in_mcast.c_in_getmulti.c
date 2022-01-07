
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int ifq_maxlen; } ;
struct in_multi {int inm_reqcnt; int inm_debug; int inm_srcs; TYPE_3__* inm_st; TYPE_2__ inm_scq; int inm_state; struct ifmultiaddr* inm_ifma; int * inm_igi; struct ifnet* inm_ifp; struct in_addr inm_addr; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {struct in_multi* ifma_protospec; TYPE_1__* ifma_addr; } ;
typedef int gsin ;
struct TYPE_6__ {void* iss_fmode; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 int ENOMEM ;
 int IFD_ATTACHED ;
 int IFD_TRASHED ;
 int IFMA_LOCK (struct ifmultiaddr*) ;
 int IFMA_REMREF (struct ifmultiaddr*) ;
 int IFMA_UNLOCK (struct ifmultiaddr*) ;
 int IGI_ADDREF (int *) ;
 int * IGMP_IFINFO (struct ifnet*) ;
 int IGMP_MAX_STATE_CHANGES ;
 int IGMP_NOT_MEMBER ;
 int INM_ADDREF (struct in_multi*) ;
 int INM_ADDREF_LOCKED (struct in_multi*) ;
 int INM_LOCK (struct in_multi*) ;
 int INM_UNLOCK (struct in_multi*) ;
 int IN_LOOKUP_MULTI (struct in_addr const*,struct ifnet*,struct in_multi*) ;
 void* MCAST_UNDEFINED ;
 int M_WAITOK ;
 int RB_INIT (int *) ;
 int VERIFY (int) ;
 int bzero (struct sockaddr_in*,int) ;
 int if_addmulti (struct ifnet*,struct sockaddr*,struct ifmultiaddr**) ;
 int in_hosteq (struct in_addr,struct in_addr const) ;
 struct in_multi* in_multi_alloc (int ) ;
 int in_multi_attach (struct in_multi*) ;
 int in_multihead_lock_done () ;
 int in_multihead_lock_exclusive () ;
 int in_multihead_lock_shared () ;

__attribute__((used)) static int
in_getmulti(struct ifnet *ifp, const struct in_addr *group,
    struct in_multi **pinm)
{
 struct sockaddr_in gsin;
 struct ifmultiaddr *ifma;
 struct in_multi *inm;
 int error;

 in_multihead_lock_shared();
 IN_LOOKUP_MULTI(group, ifp, inm);
 if (inm != ((void*)0)) {
  INM_LOCK(inm);
  VERIFY(inm->inm_reqcnt >= 1);
  inm->inm_reqcnt++;
  VERIFY(inm->inm_reqcnt != 0);
  *pinm = inm;
  INM_UNLOCK(inm);
  in_multihead_lock_done();




  return (0);
 }
 in_multihead_lock_done();

 bzero(&gsin, sizeof(gsin));
 gsin.sin_family = AF_INET;
 gsin.sin_len = sizeof(struct sockaddr_in);
 gsin.sin_addr = *group;





 error = if_addmulti(ifp, (struct sockaddr *)&gsin, &ifma);
 if (error != 0)
  return (error);




 in_multihead_lock_exclusive();
 IFMA_LOCK(ifma);
 if ((inm = ifma->ifma_protospec) != ((void*)0)) {
  VERIFY(ifma->ifma_addr != ((void*)0));
  VERIFY(ifma->ifma_addr->sa_family == AF_INET);
  INM_ADDREF(inm);
  IFMA_UNLOCK(ifma);
  INM_LOCK(inm);
  VERIFY(inm->inm_ifma == ifma);
  VERIFY(inm->inm_ifp == ifp);
  VERIFY(in_hosteq(inm->inm_addr, *group));
  if (inm->inm_debug & IFD_ATTACHED) {
   VERIFY(inm->inm_reqcnt >= 1);
   inm->inm_reqcnt++;
   VERIFY(inm->inm_reqcnt != 0);
   *pinm = inm;
   INM_UNLOCK(inm);
   in_multihead_lock_done();
   IFMA_REMREF(ifma);






   return (0);
  }






  in_multi_attach(inm);
  VERIFY((inm->inm_debug &
      (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
  *pinm = inm;
  INM_UNLOCK(inm);
  in_multihead_lock_done();
  IFMA_REMREF(ifma);
  return (0);
 }
 IFMA_UNLOCK(ifma);
 inm = in_multi_alloc(M_WAITOK);
 if (inm == ((void*)0)) {
  in_multihead_lock_done();
  IFMA_REMREF(ifma);
  return (ENOMEM);
 }
 INM_LOCK(inm);
 inm->inm_addr = *group;
 inm->inm_ifp = ifp;
 inm->inm_igi = IGMP_IFINFO(ifp);
 VERIFY(inm->inm_igi != ((void*)0));
 IGI_ADDREF(inm->inm_igi);
 inm->inm_ifma = ifma;
 inm->inm_state = IGMP_NOT_MEMBER;



 inm->inm_scq.ifq_maxlen = IGMP_MAX_STATE_CHANGES;
 inm->inm_st[0].iss_fmode = MCAST_UNDEFINED;
 inm->inm_st[1].iss_fmode = MCAST_UNDEFINED;
 RB_INIT(&inm->inm_srcs);
 *pinm = inm;
 in_multi_attach(inm);
 VERIFY((inm->inm_debug & (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
 INM_ADDREF_LOCKED(inm);
 INM_UNLOCK(inm);

 IFMA_LOCK(ifma);
 VERIFY(ifma->ifma_protospec == ((void*)0));
 ifma->ifma_protospec = inm;
 IFMA_UNLOCK(ifma);
 in_multihead_lock_done();

 return (0);
}
