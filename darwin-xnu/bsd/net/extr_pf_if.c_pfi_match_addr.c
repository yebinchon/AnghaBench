
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_dynaddr {int pfid_kt; int pfid_mask6; int pfid_addr6; int pfid_acnt6; int pfid_mask4; int pfid_addr4; int pfid_acnt4; } ;
struct pf_addr {int dummy; } ;
typedef int sa_family_t ;




 int PF_MATCHA (int ,int *,int *,struct pf_addr*,int const) ;
 int pfr_match_addr (int ,struct pf_addr*,int const) ;

int
pfi_match_addr(struct pfi_dynaddr *dyn, struct pf_addr *a, sa_family_t af)
{
 switch (af) {
 default:
  return (0);
 }
}
