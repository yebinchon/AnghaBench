
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * internal_if; } ;
struct secpolicy {scalar_t__ refcnt; struct ipsecrequest* req; int * outgoing_if; int * ipsec_if; TYPE_1__ spidx; int state; } ;
struct ipsecrequest {struct ipsecrequest* next; } ;


 int IPSEC_SPSTATE_DEAD ;
 int KFREE (struct ipsecrequest*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_REMOVE (struct secpolicy*,int ) ;
 scalar_t__ __LIST_CHAINED (struct secpolicy*) ;
 int chain ;
 int ifnet_release (int *) ;
 int ipsec_policy_count ;
 int keydb_delsecpolicy (struct secpolicy*) ;
 int panic (char*) ;
 int sadb_mutex ;

__attribute__((used)) static void
key_delsp(
    struct secpolicy *sp)
{


 if (sp == ((void*)0))
  panic("key_delsp: NULL pointer is passed.\n");

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);
 sp->state = IPSEC_SPSTATE_DEAD;

 if (sp->refcnt > 0)
  return;


 if (__LIST_CHAINED(sp)) {
  LIST_REMOVE(sp, chain);
  ipsec_policy_count--;
 }

    if (sp->spidx.internal_if) {
        ifnet_release(sp->spidx.internal_if);
        sp->spidx.internal_if = ((void*)0);
    }

    if (sp->ipsec_if) {
        ifnet_release(sp->ipsec_if);
        sp->ipsec_if = ((void*)0);
    }

    if (sp->outgoing_if) {
        ifnet_release(sp->outgoing_if);
        sp->outgoing_if = ((void*)0);
    }

    {
  struct ipsecrequest *isr = sp->req, *nextisr;

  while (isr != ((void*)0)) {
   nextisr = isr->next;
   KFREE(isr);
   isr = nextisr;
     }
 }
 keydb_delsecpolicy(sp);

 return;
}
