
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int * ro_srcia; int * ro_lle; int * ro_rt; } ;


 int IFA_ADDREF (int *) ;
 int LLE_ADDREF (int *) ;
 int RT_ADDREF (int *) ;
 int bcopy (struct route const*,struct route*,size_t) ;

void
route_copyout(struct route *dst, const struct route *src, size_t length)
{

 bcopy(src, dst, length);


 if (dst->ro_rt != ((void*)0))
  RT_ADDREF(dst->ro_rt);


 if (dst->ro_lle != ((void*)0))
  LLE_ADDREF(dst->ro_lle);


 if (dst->ro_srcia != ((void*)0))
  IFA_ADDREF(dst->ro_srcia);
}
