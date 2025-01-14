
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; scalar_t__ sin6_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int ifq_maxlen; } ;
struct in6_multi {int in6m_reqcnt; int in6m_debug; int in6m_srcs; TYPE_3__* in6m_st; TYPE_2__ in6m_scq; int in6m_state; struct ifmultiaddr* in6m_ifma; int * in6m_mli; struct ifnet* in6m_ifp; struct in6_addr in6m_addr; } ;
struct ifnet {int dummy; } ;
struct ifmultiaddr {struct in6_multi* ifma_protospec; TYPE_1__* ifma_addr; } ;
typedef int gsin6 ;
struct TYPE_6__ {void* iss_fmode; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int ENOMEM ;
 int IFD_ATTACHED ;
 int IFD_TRASHED ;
 int IFMA_LOCK (struct ifmultiaddr*) ;
 int IFMA_REMREF (struct ifmultiaddr*) ;
 int IFMA_UNLOCK (struct ifmultiaddr*) ;
 int IN6M_ADDREF (struct in6_multi*) ;
 int IN6M_ADDREF_LOCKED (struct in6_multi*) ;
 int IN6M_LOCK (struct in6_multi*) ;
 int IN6M_UNLOCK (struct in6_multi*) ;
 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr const*) ;
 int IN6_LOOKUP_MULTI (struct in6_addr const*,struct ifnet*,struct in6_multi*) ;
 void* MCAST_UNDEFINED ;
 int * MLD_IFINFO (struct ifnet*) ;
 int MLD_MAX_STATE_CHANGES ;
 int MLD_NOT_MEMBER ;
 int MLI_ADDREF (int *) ;
 int M_WAITOK ;
 int RB_INIT (int *) ;
 int VERIFY (int) ;
 int if_addmulti (struct ifnet*,struct sockaddr*,struct ifmultiaddr**) ;
 struct in6_multi* in6_multi_alloc (int ) ;
 int in6_multi_attach (struct in6_multi*) ;
 int in6_multihead_lock_done () ;
 int in6_multihead_lock_exclusive () ;
 int in6_multihead_lock_shared () ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static int
in6_mc_get(struct ifnet *ifp, const struct in6_addr *group,
    struct in6_multi **pinm)
{
 struct sockaddr_in6 gsin6;
 struct ifmultiaddr *ifma;
 struct in6_multi *inm;
 int error;

 *pinm = ((void*)0);

 in6_multihead_lock_shared();
 IN6_LOOKUP_MULTI(group, ifp, inm);
 if (inm != ((void*)0)) {
  IN6M_LOCK(inm);
  VERIFY(inm->in6m_reqcnt >= 1);
  inm->in6m_reqcnt++;
  VERIFY(inm->in6m_reqcnt != 0);
  *pinm = inm;
  IN6M_UNLOCK(inm);
  in6_multihead_lock_done();




  return (0);
 }
 in6_multihead_lock_done();

 memset(&gsin6, 0, sizeof(gsin6));
 gsin6.sin6_family = AF_INET6;
 gsin6.sin6_len = sizeof(struct sockaddr_in6);
 gsin6.sin6_addr = *group;





 error = if_addmulti(ifp, (struct sockaddr *)&gsin6, &ifma);
 if (error != 0)
  return (error);




 in6_multihead_lock_exclusive();
 IFMA_LOCK(ifma);
 if ((inm = ifma->ifma_protospec) != ((void*)0)) {
  VERIFY(ifma->ifma_addr != ((void*)0));
  VERIFY(ifma->ifma_addr->sa_family == AF_INET6);
  IN6M_ADDREF(inm);
  IFMA_UNLOCK(ifma);
  IN6M_LOCK(inm);
  VERIFY(inm->in6m_ifma == ifma);
  VERIFY(inm->in6m_ifp == ifp);
  VERIFY(IN6_ARE_ADDR_EQUAL(&inm->in6m_addr, group));
  if (inm->in6m_debug & IFD_ATTACHED) {
   VERIFY(inm->in6m_reqcnt >= 1);
   inm->in6m_reqcnt++;
   VERIFY(inm->in6m_reqcnt != 0);
   *pinm = inm;
   IN6M_UNLOCK(inm);
   in6_multihead_lock_done();
   IFMA_REMREF(ifma);






   return (0);
  }






  in6_multi_attach(inm);
  VERIFY((inm->in6m_debug &
      (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
  *pinm = inm;
  IN6M_UNLOCK(inm);
  in6_multihead_lock_done();
  IFMA_REMREF(ifma);
  return (0);
 }
 IFMA_UNLOCK(ifma);
 inm = in6_multi_alloc(M_WAITOK);
 if (inm == ((void*)0)) {
  in6_multihead_lock_done();
  IFMA_REMREF(ifma);
  return (ENOMEM);
 }
 IN6M_LOCK(inm);
 inm->in6m_addr = *group;
 inm->in6m_ifp = ifp;
 inm->in6m_mli = MLD_IFINFO(ifp);
 VERIFY(inm->in6m_mli != ((void*)0));
 MLI_ADDREF(inm->in6m_mli);
 inm->in6m_ifma = ifma;
 inm->in6m_state = MLD_NOT_MEMBER;



 inm->in6m_scq.ifq_maxlen = MLD_MAX_STATE_CHANGES;
 inm->in6m_st[0].iss_fmode = MCAST_UNDEFINED;
 inm->in6m_st[1].iss_fmode = MCAST_UNDEFINED;
 RB_INIT(&inm->in6m_srcs);
 *pinm = inm;
 in6_multi_attach(inm);
 VERIFY((inm->in6m_debug &
     (IFD_ATTACHED | IFD_TRASHED)) == IFD_ATTACHED);
 IN6M_ADDREF_LOCKED(inm);
 IN6M_UNLOCK(inm);

 IFMA_LOCK(ifma);
 VERIFY(ifma->ifma_protospec == ((void*)0));
 ifma->ifma_protospec = inm;
 IFMA_UNLOCK(ifma);
 in6_multihead_lock_done();

 return (0);
}
