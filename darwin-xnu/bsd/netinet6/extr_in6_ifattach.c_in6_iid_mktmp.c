
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct nd_ifinfo {int lock; int const* randomid; int * randomseed1; int randomseed0; scalar_t__ initialized; } ;
struct ifnet {int dummy; } ;
typedef int nullbuf ;


 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 int VERIFY (int) ;
 scalar_t__ bcmp (int const*,int *,int) ;
 int bcopy (int const*,int *,int) ;
 int bzero (int *,int) ;
 int in6_generate_tmp_iid (int ,int *,int const*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
in6_iid_mktmp(struct ifnet *ifp, u_int8_t *retbuf, const u_int8_t *baseid,
    int generate)
{
 u_int8_t nullbuf[8];
 struct nd_ifinfo *ndi = ND_IFINFO(ifp);

 VERIFY(ndi != ((void*)0) && ndi->initialized);
 lck_mtx_lock(&ndi->lock);
 bzero(nullbuf, sizeof (nullbuf));
 if (bcmp(ndi->randomid, nullbuf, sizeof (nullbuf)) == 0) {

  generate = 1;
 }

 if (generate) {
  bcopy(baseid, ndi->randomseed1, sizeof (ndi->randomseed1));


  (void) in6_generate_tmp_iid(ndi->randomseed0, ndi->randomseed1,
      ndi->randomid);
 }

 bcopy(ndi->randomid, retbuf, 8);
 lck_mtx_unlock(&ndi->lock);
}
