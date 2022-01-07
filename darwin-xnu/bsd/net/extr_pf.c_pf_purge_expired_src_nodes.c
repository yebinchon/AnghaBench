
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* ptr; } ;
struct pf_src_node {scalar_t__ states; scalar_t__ expire; TYPE_1__ rule; } ;
struct TYPE_6__ {scalar_t__ states; scalar_t__ max_src_nodes; int src_nodes; } ;
struct TYPE_5__ {int src_nodes; int * scounters; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct pf_src_node* RB_MIN (int ,int *) ;
 struct pf_src_node* RB_NEXT (int ,int *,struct pf_src_node*) ;
 int RB_REMOVE (int ,int *,struct pf_src_node*) ;
 size_t SCNT_SRC_NODE_REMOVALS ;
 int pf_lock ;
 int pf_rm_rule (int *,TYPE_3__*) ;
 int pf_src_tree ;
 int pf_src_tree_pl ;
 TYPE_2__ pf_status ;
 scalar_t__ pf_time_second () ;
 int pool_put (int *,struct pf_src_node*) ;
 int tree_src_tracking ;

void
pf_purge_expired_src_nodes(void)
{
 struct pf_src_node *cur, *next;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 for (cur = RB_MIN(pf_src_tree, &tree_src_tracking); cur; cur = next) {
  next = RB_NEXT(pf_src_tree, &tree_src_tracking, cur);

  if (cur->states <= 0 && cur->expire <= pf_time_second()) {
   if (cur->rule.ptr != ((void*)0)) {
    cur->rule.ptr->src_nodes--;
    if (cur->rule.ptr->states <= 0 &&
        cur->rule.ptr->max_src_nodes <= 0)
     pf_rm_rule(((void*)0), cur->rule.ptr);
   }
   RB_REMOVE(pf_src_tree, &tree_src_tracking, cur);
   pf_status.scounters[SCNT_SRC_NODE_REMOVALS]++;
   pf_status.src_nodes--;
   pool_put(&pf_src_tree_pl, cur);
  }
 }
}
