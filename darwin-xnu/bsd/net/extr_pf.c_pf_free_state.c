
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_6__* ptr; } ;
struct TYPE_8__ {TYPE_6__* ptr; } ;
struct TYPE_7__ {TYPE_6__* ptr; } ;
struct pf_state {scalar_t__ timeout; scalar_t__ tag; int kif; TYPE_3__ anchor; TYPE_2__ nat_rule; TYPE_1__ rule; } ;
struct TYPE_12__ {scalar_t__ states; scalar_t__ src_nodes; } ;
struct TYPE_11__ {scalar_t__ states; int * fcounters; } ;
struct TYPE_10__ {struct pf_state* sc_bulk_terminator; struct pf_state* sc_bulk_send_next; } ;


 size_t FCNT_STATE_REMOVALS ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFI_KIF_REF_STATE ;
 scalar_t__ PFTM_UNLINKED ;
 int TAILQ_REMOVE (int *,struct pf_state*,int ) ;
 int VERIFY (int) ;
 int entry_list ;
 int pf_lock ;
 int pf_normalize_tcp_cleanup (struct pf_state*) ;
 int pf_rm_rule (int *,TYPE_6__*) ;
 int pf_state_pl ;
 TYPE_5__ pf_status ;
 int pf_tag_unref (scalar_t__) ;
 int pfi_kif_unref (int ,int ) ;
 TYPE_4__* pfsyncif ;
 int pool_put (int *,struct pf_state*) ;
 int state_list ;

void
pf_free_state(struct pf_state *cur)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);






 VERIFY(cur->timeout == PFTM_UNLINKED);
 VERIFY(cur->rule.ptr->states > 0);
 if (--cur->rule.ptr->states <= 0 &&
     cur->rule.ptr->src_nodes <= 0)
  pf_rm_rule(((void*)0), cur->rule.ptr);
 if (cur->nat_rule.ptr != ((void*)0)) {
  VERIFY(cur->nat_rule.ptr->states > 0);
  if (--cur->nat_rule.ptr->states <= 0 &&
      cur->nat_rule.ptr->src_nodes <= 0)
   pf_rm_rule(((void*)0), cur->nat_rule.ptr);
 }
 if (cur->anchor.ptr != ((void*)0)) {
  VERIFY(cur->anchor.ptr->states > 0);
  if (--cur->anchor.ptr->states <= 0)
   pf_rm_rule(((void*)0), cur->anchor.ptr);
 }
 pf_normalize_tcp_cleanup(cur);
 pfi_kif_unref(cur->kif, PFI_KIF_REF_STATE);
 TAILQ_REMOVE(&state_list, cur, entry_list);
 if (cur->tag)
  pf_tag_unref(cur->tag);
 pool_put(&pf_state_pl, cur);
 pf_status.fcounters[FCNT_STATE_REMOVALS]++;
 VERIFY(pf_status.states > 0);
 pf_status.states--;
}
