
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pf_state {scalar_t__ timeout; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ PFTM_UNLINKED ;
 struct pf_state* TAILQ_FIRST (int *) ;
 struct pf_state* TAILQ_NEXT (struct pf_state*,int ) ;
 int entry_list ;
 int pf_free_state (struct pf_state*) ;
 int pf_lock ;
 scalar_t__ pf_state_expires (struct pf_state*) ;
 scalar_t__ pf_time_second () ;
 int pf_unlink_state (struct pf_state*) ;
 int state_list ;

void
pf_purge_expired_states(u_int32_t maxcheck)
{
 static struct pf_state *cur = ((void*)0);
 struct pf_state *next;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 while (maxcheck--) {

  if (cur == ((void*)0)) {
   cur = TAILQ_FIRST(&state_list);
   if (cur == ((void*)0))
    break;
  }


  next = TAILQ_NEXT(cur, entry_list);

  if (cur->timeout == PFTM_UNLINKED) {
   pf_free_state(cur);
  } else if (pf_state_expires(cur) <= pf_time_second()) {

   pf_unlink_state(cur);
   pf_free_state(cur);
  }
  cur = next;
 }
}
