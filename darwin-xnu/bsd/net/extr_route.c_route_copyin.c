
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int * ro_srcia; int * ro_rt; int * ro_lle; int ro_flags; } ;


 int IFA_REMREF (int *) ;
 int LLE_REMREF (int *) ;
 int bcopy (struct route*,struct route*,size_t) ;
 int rtfree (int *) ;

void
route_copyin(struct route *src, struct route *dst, size_t length)
{





 if (dst->ro_rt == ((void*)0)) {




  if (dst->ro_lle != ((void*)0))
   LLE_REMREF(dst->ro_lle);




  if (dst->ro_srcia != ((void*)0))
   IFA_REMREF(dst->ro_srcia);





  bcopy(src, dst, length);
  goto done;
 }






 if (dst->ro_rt == src->ro_rt) {
  dst->ro_flags = src->ro_flags;

  if (dst->ro_lle != src->ro_lle) {
   if (dst->ro_lle != ((void*)0))
    LLE_REMREF(dst->ro_lle);
   dst->ro_lle = src->ro_lle;
  } else if (src->ro_lle != ((void*)0)) {
   LLE_REMREF(src->ro_lle);
  }

  if (dst->ro_srcia != src->ro_srcia) {
   if (dst->ro_srcia != ((void*)0))
    IFA_REMREF(dst->ro_srcia);
   dst->ro_srcia = src->ro_srcia;
  } else if (src->ro_srcia != ((void*)0)) {
   IFA_REMREF(src->ro_srcia);
  }
  rtfree(src->ro_rt);
  goto done;
 }






 if (src->ro_rt != ((void*)0)) {
  rtfree(dst->ro_rt);

  if (dst->ro_lle != ((void*)0))
   LLE_REMREF(dst->ro_lle);
  if (dst->ro_srcia != ((void*)0))
   IFA_REMREF(dst->ro_srcia);
  bcopy(src, dst, length);
  goto done;
 }





 if (src->ro_srcia != ((void*)0)) {




  IFA_REMREF(src->ro_srcia);
 }
 if (src->ro_lle != ((void*)0)) {




  LLE_REMREF(src->ro_lle);
 }
done:

 src->ro_lle = ((void*)0);
 src->ro_rt = ((void*)0);
 src->ro_srcia = ((void*)0);
}
