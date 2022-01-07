
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int16_t ;
typedef size_t u_int ;
struct secasvar {int flags; scalar_t__ remote_ike_port; int refcnt; TYPE_2__* lft_c; int state; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct secashead {TYPE_1__ saidx; int * savtree; } ;
struct TYPE_4__ {scalar_t__ sadb_lifetime_addtime; } ;


 scalar_t__ IPSEC_MODE_TRANSPORT ;
 scalar_t__ IPSEC_MODE_TUNNEL ;
 int KEYDEBUG (int ,int ) ;
 int KEYDEBUG_IPSEC_STAMP ;
 int KEY_CHKSASTATE (int ,size_t,char*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct secasvar* LIST_FIRST (int *) ;
 struct secasvar* LIST_NEXT (struct secasvar*,int ) ;
 int SADB_X_EXT_NATT ;
 int SADB_X_EXT_NATT_MULTIPLEUSERS ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct secasvar*) ;
 int chain ;
 scalar_t__ key_preferred_oldsa ;
 int key_send_delete (struct secasvar*) ;
 scalar_t__ ntohs (scalar_t__) ;
 int panic (char*) ;
 int printf (char*,int,int ) ;
 int sadb_mutex ;

__attribute__((used)) static struct secasvar *
key_do_allocsa_policy(
       struct secashead *sah,
       u_int state,
       u_int16_t dstport)
{
 struct secasvar *sav, *nextsav, *candidate, *natt_candidate, *no_natt_candidate, *d;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 candidate = ((void*)0);
 natt_candidate = ((void*)0);
 no_natt_candidate = ((void*)0);

 for (sav = LIST_FIRST(&sah->savtree[state]);
      sav != ((void*)0);
      sav = nextsav) {

  nextsav = LIST_NEXT(sav, chain);


  KEY_CHKSASTATE(sav->state, state, "key_do_allocsa_policy");

  if (sah->saidx.mode == IPSEC_MODE_TUNNEL && dstport &&
      ((sav->flags & SADB_X_EXT_NATT) != 0) &&
      ntohs(dstport) != sav->remote_ike_port)
   continue;

  if (sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
      ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0) &&
      ntohs(dstport) != sav->remote_ike_port)
   continue;

  if ((sah->saidx.mode == IPSEC_MODE_TUNNEL &&
       ((sav->flags & SADB_X_EXT_NATT) != 0)) ||
      (sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
       ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0))) {
    if (natt_candidate == ((void*)0)) {
     natt_candidate = sav;
     continue;
    } else
     candidate = natt_candidate;
   } else {
    if (no_natt_candidate == ((void*)0)) {
     no_natt_candidate = sav;
     continue;
    } else
     candidate = no_natt_candidate;
   }




  if (candidate->lft_c == ((void*)0) || sav->lft_c == ((void*)0))
   panic("key_do_allocsa_policy: "
      "lifetime_current is NULL.\n");


  if (key_preferred_oldsa) {
   if (candidate->lft_c->sadb_lifetime_addtime >
    sav->lft_c->sadb_lifetime_addtime) {
    if ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0)
     natt_candidate = sav;
    else
     no_natt_candidate = sav;
   }
   continue;

  }


  if (candidate->lft_c->sadb_lifetime_addtime <
   sav->lft_c->sadb_lifetime_addtime) {
   d = candidate;
   if ((sah->saidx.mode == IPSEC_MODE_TUNNEL &&
     ((sav->flags & SADB_X_EXT_NATT) != 0)) ||
    (sah->saidx.mode == IPSEC_MODE_TRANSPORT &&
     ((sav->flags & SADB_X_EXT_NATT_MULTIPLEUSERS) != 0))) {
    natt_candidate = sav;
   } else {
    no_natt_candidate = sav;
   }
  } else {
   d = sav;
  }






  if (d->lft_c->sadb_lifetime_addtime != 0) {
   key_send_delete(d);
  }
 }


 if (natt_candidate == ((void*)0))
  candidate = no_natt_candidate;
 else if (no_natt_candidate == ((void*)0))
  candidate = natt_candidate;
 else if (sah->saidx.mode == IPSEC_MODE_TUNNEL && dstport)
  candidate = natt_candidate;
 else if (natt_candidate->lft_c->sadb_lifetime_addtime >
    no_natt_candidate->lft_c->sadb_lifetime_addtime)
  candidate = natt_candidate;
 else
  candidate = no_natt_candidate;

 if (candidate) {
  candidate->refcnt++;
  KEYDEBUG(KEYDEBUG_IPSEC_STAMP,
      printf("DP allocsa_policy cause "
      "refcnt++:%d SA:0x%llx\n", candidate->refcnt,
      (uint64_t)VM_KERNEL_ADDRPERM(candidate)));
 }
 return candidate;
}
