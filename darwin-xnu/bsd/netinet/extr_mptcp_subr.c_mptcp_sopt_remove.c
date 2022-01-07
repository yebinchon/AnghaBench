
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptses {int mpte_sopts; } ;
struct mptopt {int mpo_flags; } ;


 int MPOF_ATTACHED ;
 int TAILQ_REMOVE (int *,struct mptopt*,int ) ;
 int VERIFY (int) ;
 int mpo_entry ;
 int mpte_lock_assert_held (struct mptses*) ;

void
mptcp_sopt_remove(struct mptses *mpte, struct mptopt *mpo)
{
 mpte_lock_assert_held(mpte);
 VERIFY(mpo->mpo_flags & MPOF_ATTACHED);
 mpo->mpo_flags &= ~MPOF_ATTACHED;
 TAILQ_REMOVE(&mpte->mpte_sopts, mpo, mpo_entry);
}
