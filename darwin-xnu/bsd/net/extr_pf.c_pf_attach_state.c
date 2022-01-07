
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_state_key {int states; int refcnt; } ;
struct pf_state {struct pf_state_key* state_key; } ;


 int TAILQ_INSERT_HEAD (int *,struct pf_state*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pf_state*,int ) ;
 int next ;

__attribute__((used)) static void
pf_attach_state(struct pf_state_key *sk, struct pf_state *s, int tail)
{
 s->state_key = sk;
 sk->refcnt++;


 if (tail)
  TAILQ_INSERT_TAIL(&sk->states, s, next);
 else
  TAILQ_INSERT_HEAD(&sk->states, s, next);
}
