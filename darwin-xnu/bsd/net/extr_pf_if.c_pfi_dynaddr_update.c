
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {scalar_t__ pfrkt_larg; } ;
struct pfi_kif {int dummy; } ;
struct pfi_dynaddr {int pfid_iflags; int pfid_net; struct pfr_ktable* pfid_kt; struct pfi_kif* pfid_kif; } ;


 int panic (char*) ;
 int pfi_table_update (struct pfr_ktable*,struct pfi_kif*,int ,int ) ;
 scalar_t__ pfi_update ;
 int pfr_dynaddr_update (struct pfr_ktable*,struct pfi_dynaddr*) ;

void
pfi_dynaddr_update(struct pfi_dynaddr *dyn)
{
 struct pfi_kif *kif;
 struct pfr_ktable *kt;

 if (dyn == ((void*)0) || dyn->pfid_kif == ((void*)0) || dyn->pfid_kt == ((void*)0))
  panic("pfi_dynaddr_update");

 kif = dyn->pfid_kif;
 kt = dyn->pfid_kt;

 if (kt->pfrkt_larg != pfi_update) {

  pfi_table_update(kt, kif, dyn->pfid_net, dyn->pfid_iflags);
  kt->pfrkt_larg = pfi_update;
 }
 pfr_dynaddr_update(kt, dyn);
}
