
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct pf_rule* ptr; } ;
struct pf_src_node {scalar_t__ states; TYPE_3__ rule; int ruletype; int creation; int addr; void* af; int conn_rate; } ;
struct TYPE_6__ {int opts; } ;
struct TYPE_5__ {int seconds; int limit; } ;
struct pf_rule {int rule_flag; scalar_t__ max_src_nodes; scalar_t__ src_nodes; scalar_t__ max_src_states; int action; TYPE_2__ rpool; TYPE_1__ max_src_conn_rate; } ;
struct pf_addr {int dummy; } ;
typedef void* sa_family_t ;
struct TYPE_8__ {scalar_t__ debug; int * lcounters; int src_nodes; int * scounters; } ;


 size_t LCNT_SRCNODES ;
 size_t LCNT_SRCSTATES ;
 int PFRULE_RULESRCTRACK ;
 int PF_ACPY (int *,struct pf_addr*,void*) ;
 scalar_t__ PF_DEBUG_MISC ;
 int PF_POOL_STICKYADDR ;
 int PR_WAITOK ;
 struct pf_src_node* RB_FIND (int ,int *,struct pf_src_node*) ;
 int * RB_INSERT (int ,int *,struct pf_src_node*) ;
 size_t SCNT_SRC_NODE_INSERT ;
 size_t SCNT_SRC_NODE_SEARCH ;
 int bzero (struct pf_src_node*,int) ;
 int pf_init_threshold (int *,int ,int ) ;
 int pf_print_host (int *,int ,void*) ;
 int pf_src_tree ;
 int pf_src_tree_pl ;
 TYPE_4__ pf_status ;
 int pf_time_second () ;
 struct pf_src_node* pool_get (int *,int ) ;
 int pool_put (int *,struct pf_src_node*) ;
 int printf (char*) ;
 int tree_src_tracking ;

int
pf_insert_src_node(struct pf_src_node **sn, struct pf_rule *rule,
    struct pf_addr *src, sa_family_t af)
{
 struct pf_src_node k;

 if (*sn == ((void*)0)) {
  k.af = af;
  PF_ACPY(&k.addr, src, af);
  if (rule->rule_flag & PFRULE_RULESRCTRACK ||
      rule->rpool.opts & PF_POOL_STICKYADDR)
   k.rule.ptr = rule;
  else
   k.rule.ptr = ((void*)0);
  pf_status.scounters[SCNT_SRC_NODE_SEARCH]++;
  *sn = RB_FIND(pf_src_tree, &tree_src_tracking, &k);
 }
 if (*sn == ((void*)0)) {
  if (!rule->max_src_nodes ||
      rule->src_nodes < rule->max_src_nodes)
   (*sn) = pool_get(&pf_src_tree_pl, PR_WAITOK);
  else
   pf_status.lcounters[LCNT_SRCNODES]++;
  if ((*sn) == ((void*)0))
   return (-1);
  bzero(*sn, sizeof (struct pf_src_node));

  pf_init_threshold(&(*sn)->conn_rate,
      rule->max_src_conn_rate.limit,
      rule->max_src_conn_rate.seconds);

  (*sn)->af = af;
  if (rule->rule_flag & PFRULE_RULESRCTRACK ||
      rule->rpool.opts & PF_POOL_STICKYADDR)
   (*sn)->rule.ptr = rule;
  else
   (*sn)->rule.ptr = ((void*)0);
  PF_ACPY(&(*sn)->addr, src, af);
  if (RB_INSERT(pf_src_tree,
      &tree_src_tracking, *sn) != ((void*)0)) {
   if (pf_status.debug >= PF_DEBUG_MISC) {
    printf("pf: src_tree insert failed: ");
    pf_print_host(&(*sn)->addr, 0, af);
    printf("\n");
   }
   pool_put(&pf_src_tree_pl, *sn);
   return (-1);
  }
  (*sn)->creation = pf_time_second();
  (*sn)->ruletype = rule->action;
  if ((*sn)->rule.ptr != ((void*)0))
   (*sn)->rule.ptr->src_nodes++;
  pf_status.scounters[SCNT_SRC_NODE_INSERT]++;
  pf_status.src_nodes++;
 } else {
  if (rule->max_src_states &&
      (*sn)->states >= rule->max_src_states) {
   pf_status.lcounters[LCNT_SRCSTATES]++;
   return (-1);
  }
 }
 return (0);
}
