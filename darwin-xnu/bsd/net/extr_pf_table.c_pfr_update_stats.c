
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct pfr_ktable {int pfrkt_flags; int ** pfrkt_bytes; int ** pfrkt_packets; int pfrkt_ip6; int pfrkt_ip4; struct pfr_ktable* pfrkt_root; } ;
struct pfr_kentry {int ** pfrke_bytes; int ** pfrke_packets; scalar_t__ pfrke_not; } ;
struct pf_addr {int * addr32; } ;
typedef int sa_family_t ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {int sin6_addr; TYPE_1__ sin_addr; } ;




 int KENTRY_RNF_ROOT (struct pfr_kentry*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFR_OP_PASS ;
 int PFR_OP_XPASS ;
 int PFR_TFLAG_ACTIVE ;
 int bcopy (struct pf_addr*,int *,int) ;
 int pf_lock ;
 TYPE_2__ pfr_sin ;
 TYPE_2__ pfr_sin6 ;
 int printf (char*) ;
 scalar_t__ rn_match (TYPE_2__*,int ) ;

void
pfr_update_stats(struct pfr_ktable *kt, struct pf_addr *a, sa_family_t af,
    u_int64_t len, int dir_out, int op_pass, int notrule)
{
 struct pfr_kentry *ke = ((void*)0);

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != ((void*)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return;

 switch (af) {
 default:
  ;
 }
 if ((ke == ((void*)0) || ke->pfrke_not) != notrule) {
  if (op_pass != PFR_OP_PASS)
   printf("pfr_update_stats: assertion failed.\n");
  op_pass = PFR_OP_XPASS;
 }
 kt->pfrkt_packets[dir_out][op_pass]++;
 kt->pfrkt_bytes[dir_out][op_pass] += len;
 if (ke != ((void*)0) && op_pass != PFR_OP_XPASS) {
  ke->pfrke_packets[dir_out][op_pass]++;
  ke->pfrke_bytes[dir_out][op_pass] += len;
 }
}
