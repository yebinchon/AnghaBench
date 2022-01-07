
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pf_rulequeue {int dummy; } ;
struct TYPE_8__ {int list; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int * tqe_prev; } ;
struct pf_rule {scalar_t__ states; int nr; scalar_t__ src_nodes; TYPE_4__ rpool; int kif; scalar_t__ overload_tbl; TYPE_3__ dst; TYPE_2__ src; int match_tag; int tag; TYPE_1__ entries; } ;


 int PFI_KIF_REF_RULE ;
 int TAILQ_REMOVE (struct pf_rulequeue*,struct pf_rule*,int ) ;
 int entries ;
 int pf_anchor_remove (struct pf_rule*) ;
 int pf_empty_pool (int *) ;
 int pf_rtlabel_remove (int *) ;
 int pf_rule_pl ;
 int pf_tag_unref (int ) ;
 int pf_tbladdr_remove (int *) ;
 int pfi_dynaddr_remove (int *) ;
 int pfi_kif_unref (int ,int ) ;
 int pfr_detach_table (scalar_t__) ;
 int pool_put (int *,struct pf_rule*) ;

void
pf_rm_rule(struct pf_rulequeue *rulequeue, struct pf_rule *rule)
{
 if (rulequeue != ((void*)0)) {
  if (rule->states <= 0) {





   pf_tbladdr_remove(&rule->src.addr);
   pf_tbladdr_remove(&rule->dst.addr);
   if (rule->overload_tbl)
    pfr_detach_table(rule->overload_tbl);
  }
  TAILQ_REMOVE(rulequeue, rule, entries);
  rule->entries.tqe_prev = ((void*)0);
  rule->nr = -1;
 }

 if (rule->states > 0 || rule->src_nodes > 0 ||
     rule->entries.tqe_prev != ((void*)0))
  return;
 pf_tag_unref(rule->tag);
 pf_tag_unref(rule->match_tag);
 pf_rtlabel_remove(&rule->src.addr);
 pf_rtlabel_remove(&rule->dst.addr);
 pfi_dynaddr_remove(&rule->src.addr);
 pfi_dynaddr_remove(&rule->dst.addr);
 if (rulequeue == ((void*)0)) {
  pf_tbladdr_remove(&rule->src.addr);
  pf_tbladdr_remove(&rule->dst.addr);
  if (rule->overload_tbl)
   pfr_detach_table(rule->overload_tbl);
 }
 pfi_kif_unref(rule->kif, PFI_KIF_REF_RULE);
 pf_anchor_remove(rule);
 pf_empty_pool(&rule->rpool.list);
 pool_put(&pf_rule_pl, rule);
}
