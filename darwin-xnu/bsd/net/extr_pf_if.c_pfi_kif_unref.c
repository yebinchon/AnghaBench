
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {scalar_t__ pfik_states; scalar_t__ pfik_rules; int * pfik_ifp; } ;
typedef enum pfi_kif_refs { ____Placeholder_pfi_kif_refs } pfi_kif_refs ;





 int PFI_MTYPE ;
 int RB_REMOVE (int ,int *,struct pfi_kif*) ;
 int _FREE (struct pfi_kif*,int ) ;
 int panic (char*) ;
 struct pfi_kif* pfi_all ;
 int pfi_ifhead ;
 int pfi_ifs ;
 int printf (char*) ;

void
pfi_kif_unref(struct pfi_kif *kif, enum pfi_kif_refs what)
{
 if (kif == ((void*)0))
  return;

 switch (what) {
 case 130:
  break;
 case 129:
  if (kif->pfik_rules <= 0) {
   printf("pfi_kif_unref: rules refcount <= 0\n");
   return;
  }
  kif->pfik_rules--;
  break;
 case 128:
  if (kif->pfik_states <= 0) {
   printf("pfi_kif_unref: state refcount <= 0\n");
   return;
  }
  kif->pfik_states--;
  break;
 default:
  panic("pfi_kif_unref with unknown type");
 }

 if (kif->pfik_ifp != ((void*)0) || kif == pfi_all)
  return;

 if (kif->pfik_rules || kif->pfik_states)
  return;

 RB_REMOVE(pfi_ifhead, &pfi_ifs, kif);
 _FREE(kif, PFI_MTYPE);
}
