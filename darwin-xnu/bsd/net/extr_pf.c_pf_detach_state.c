
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key {scalar_t__ refcnt; struct pf_state_key* app_state; int states; } ;
struct pf_state {struct pf_state_key* state_key; } ;


 int PF_DT_SKIP_EXTGWY ;
 int PF_DT_SKIP_LANEXT ;
 int RB_REMOVE (int ,int *,struct pf_state_key*) ;
 int TAILQ_REMOVE (int *,struct pf_state*,int ) ;
 int next ;
 int pf_app_state_pl ;
 int pf_state_key_pl ;
 int pf_state_tree_ext_gwy ;
 int pf_state_tree_lan_ext ;
 int pf_statetbl_ext_gwy ;
 int pf_statetbl_lan_ext ;
 int pool_put (int *,struct pf_state_key*) ;

__attribute__((used)) static void
pf_detach_state(struct pf_state *s, int flags)
{
 struct pf_state_key *sk = s->state_key;

 if (sk == ((void*)0))
  return;

 s->state_key = ((void*)0);
 TAILQ_REMOVE(&sk->states, s, next);
 if (--sk->refcnt == 0) {
  if (!(flags & PF_DT_SKIP_EXTGWY))
   RB_REMOVE(pf_state_tree_ext_gwy,
       &pf_statetbl_ext_gwy, sk);
  if (!(flags & PF_DT_SKIP_LANEXT))
   RB_REMOVE(pf_state_tree_lan_ext,
       &pf_statetbl_lan_ext, sk);
  if (sk->app_state)
   pool_put(&pf_app_state_pl, sk->app_state);
  pool_put(&pf_state_key_pl, sk);
 }
}
