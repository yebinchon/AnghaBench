
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_mship {int * i6mm_maddr; } ;


 int IN6M_REMREF (int *) ;
 int in6_mc_leave (int *,int *) ;
 int in6_multi_mship_free (struct in6_multi_mship*) ;

int
in6_leavegroup(struct in6_multi_mship *imm)
{
 if (imm->i6mm_maddr != ((void*)0)) {
  in6_mc_leave(imm->i6mm_maddr, ((void*)0));
  IN6M_REMREF(imm->i6mm_maddr);
  imm->i6mm_maddr = ((void*)0);
 }
 in6_multi_mship_free(imm);
 return 0;
}
