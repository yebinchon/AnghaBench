
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct pf_addr {int * addr16; } ;
typedef int sa_family_t ;




 int PF_ACPY (struct pf_addr*,struct pf_addr*,int ) ;
 int pf_cksum_fixup (int ,int ,int ,int ) ;

__attribute__((used)) static void
pf_change_icmp(struct pf_addr *ia, u_int16_t *ip, struct pf_addr *oa,
    struct pf_addr *na, u_int16_t np, u_int16_t *pc, u_int16_t *h2c,
    u_int16_t *ic, u_int16_t *hc, u_int8_t u, sa_family_t af)
{
 struct pf_addr oia, ooa;

 PF_ACPY(&oia, ia, af);
 PF_ACPY(&ooa, oa, af);


 if (ip != ((void*)0)) {
  u_int16_t oip = *ip;
  u_int32_t opc = 0;

  if (pc != ((void*)0))
   opc = *pc;
  *ip = np;
  if (pc != ((void*)0))
   *pc = pf_cksum_fixup(*pc, oip, *ip, u);
  *ic = pf_cksum_fixup(*ic, oip, *ip, 0);
  if (pc != ((void*)0))
   *ic = pf_cksum_fixup(*ic, opc, *pc, 0);
 }

 PF_ACPY(ia, na, af);
 switch (af) {
 }

 PF_ACPY(oa, na, af);
 switch (af) {
 }
}
