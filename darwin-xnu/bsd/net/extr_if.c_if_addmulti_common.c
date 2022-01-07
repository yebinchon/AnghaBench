
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_len; } ;
typedef struct sockaddr {scalar_t__ sa_family; } const sockaddr ;
struct ifnet {int if_flags; scalar_t__ if_updatemcasts; } ;
struct ifmultiaddr {struct sockaddr const* ifma_addr; struct ifnet* ifma_ifp; struct ifmultiaddr* ifma_ll; } ;
typedef int storage ;


 scalar_t__ AF_LINK ;
 scalar_t__ AF_UNSPEC ;
 int EADDRNOTAVAIL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FREE (struct sockaddr const*,int ) ;
 int IFF_MULTICAST ;
 int IFMA_ADDREF_LOCKED (struct ifmultiaddr*) ;
 int IFMA_LOCK (struct ifmultiaddr*) ;
 int IFMA_REMREF (struct ifmultiaddr*) ;
 int IFMA_UNLOCK (struct ifmultiaddr*) ;
 int M_IFADDR ;
 int M_WAITOK ;
 int RTM_NEWMADDR ;
 int SIOCADDMULTI ;
 int VERIFY (int) ;
 struct sockaddr const* copy_and_normalize (struct sockaddr const*) ;
 int dlil_resolve_multi (struct ifnet*,struct sockaddr const*,struct sockaddr const*,int) ;
 int if_addmulti_doesexist (struct ifnet*,struct sockaddr const*,struct ifmultiaddr**,int) ;
 int if_attach_ifma (struct ifnet*,struct ifmultiaddr*,int) ;
 struct ifmultiaddr* ifma_alloc (int ) ;
 int ifma_free (struct ifmultiaddr*) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int rt_newmaddrmsg (int ,struct ifmultiaddr*) ;

__attribute__((used)) static int
if_addmulti_common(struct ifnet *ifp, const struct sockaddr *sa,
    struct ifmultiaddr **retifma, int anon)
{
 struct sockaddr_storage storage;
 struct sockaddr *llsa = ((void*)0);
 struct sockaddr *dupsa = ((void*)0);
 int error = 0, ll_firstref = 0, lladdr;
 struct ifmultiaddr *ifma = ((void*)0);
 struct ifmultiaddr *llifma = ((void*)0);


 VERIFY(!anon || sa->sa_family == AF_UNSPEC ||
     sa->sa_family == AF_LINK);


 if (sa->sa_family == AF_LINK || sa->sa_family == AF_UNSPEC) {
  dupsa = copy_and_normalize(sa);
  if (dupsa == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }
  sa = dupsa;
 }

 ifnet_lock_exclusive(ifp);
 if (!(ifp->if_flags & IFF_MULTICAST)) {
  error = EADDRNOTAVAIL;
  ifnet_lock_done(ifp);
  goto cleanup;
 }


 error = if_addmulti_doesexist(ifp, sa, retifma, anon);
 ifnet_lock_done(ifp);
 if (error == 0)
  goto cleanup;






 error = dlil_resolve_multi(ifp, sa, (struct sockaddr *)&storage,
     sizeof (storage));
 if (error == 0 && storage.ss_len != 0) {
  llsa = copy_and_normalize((struct sockaddr *)&storage);
  if (llsa == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }

  llifma = ifma_alloc(M_WAITOK);
  if (llifma == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }
 }


 if (error == EOPNOTSUPP)
  error = 0;
 else if (error != 0)
  goto cleanup;


 if (dupsa == ((void*)0)) {
  dupsa = copy_and_normalize(sa);
  if (dupsa == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }
 }
 ifma = ifma_alloc(M_WAITOK);
 if (ifma == ((void*)0)) {
  error = ENOMEM;
  goto cleanup;
 }

 ifnet_lock_exclusive(ifp);



 error = if_addmulti_doesexist(ifp, sa, retifma, anon);
 if (error == 0) {
  ifnet_lock_done(ifp);
  goto cleanup;
 }

 if (llifma != ((void*)0)) {
  VERIFY(!anon);
  if (if_addmulti_doesexist(ifp, llsa, &ifma->ifma_ll, 0) == 0) {
   FREE(llsa, M_IFADDR);
   llsa = ((void*)0);
   ifma_free(llifma);
   llifma = ((void*)0);
   VERIFY(ifma->ifma_ll->ifma_ifp == ifp);
  } else {
   ll_firstref = 1;
   llifma->ifma_addr = llsa;
   llifma->ifma_ifp = ifp;
   IFMA_LOCK(llifma);
   if_attach_ifma(ifp, llifma, 0);

   IFMA_ADDREF_LOCKED(llifma);
   IFMA_UNLOCK(llifma);
   ifma->ifma_ll = llifma;
  }
 }


 VERIFY(!anon || ifma->ifma_ll == ((void*)0));

 ifma->ifma_addr = dupsa;
 ifma->ifma_ifp = ifp;
 IFMA_LOCK(ifma);
 if_attach_ifma(ifp, ifma, anon);
 IFMA_ADDREF_LOCKED(ifma);
 if (retifma != ((void*)0)) {
  *retifma = ifma;
  IFMA_ADDREF_LOCKED(*retifma);
 }
 lladdr = (ifma->ifma_addr->sa_family == AF_UNSPEC ||
     ifma->ifma_addr->sa_family == AF_LINK);
 IFMA_UNLOCK(ifma);
 ifnet_lock_done(ifp);

 rt_newmaddrmsg(RTM_NEWMADDR, ifma);
 IFMA_REMREF(ifma);






 if (lladdr || ll_firstref)
  (void) ifnet_ioctl(ifp, 0, SIOCADDMULTI, ((void*)0));

 if (ifp->if_updatemcasts > 0)
  ifp->if_updatemcasts = 0;

 return (0);

cleanup:
 if (ifma != ((void*)0))
  ifma_free(ifma);
 if (dupsa != ((void*)0))
  FREE(dupsa, M_IFADDR);
 if (llifma != ((void*)0))
  ifma_free(llifma);
 if (llsa != ((void*)0))
  FREE(llsa, M_IFADDR);

 return (error);
}
