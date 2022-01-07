
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pf_state_cmp {int dummy; } ;
struct pf_state {int dummy; } ;
struct TYPE_2__ {int * fcounters; } ;


 size_t FCNT_STATE_SEARCH ;
 struct pf_state* RB_FIND (int ,int *,struct pf_state*) ;
 int pf_state_tree_id ;
 TYPE_1__ pf_status ;
 int tree_id ;

struct pf_state *
pf_find_state_byid(struct pf_state_cmp *key)
{
 pf_status.fcounters[FCNT_STATE_SEARCH]++;

 return (RB_FIND(pf_state_tree_id, &tree_id,
     (struct pf_state *)(void *)key));
}
