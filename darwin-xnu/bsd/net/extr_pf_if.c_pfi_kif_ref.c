
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int pfik_states; int pfik_rules; } ;
typedef enum pfi_kif_refs { ____Placeholder_pfi_kif_refs } pfi_kif_refs ;




 int panic (char*) ;

void
pfi_kif_ref(struct pfi_kif *kif, enum pfi_kif_refs what)
{
 switch (what) {
 case 129:
  kif->pfik_rules++;
  break;
 case 128:
  kif->pfik_states++;
  break;
 default:
  panic("pfi_kif_ref with unknown type");
 }
}
