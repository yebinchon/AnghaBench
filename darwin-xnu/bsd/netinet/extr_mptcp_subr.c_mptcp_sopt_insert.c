
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptses {int mpte_sopts; } ;
struct mptopt {int mpo_flags; } ;


 int MPOF_ATTACHED ;
 int TAILQ_INSERT_TAIL (int *,struct mptopt*,int ) ;
 int mpo_entry ;
 int mpte_lock_assert_held (struct mptses*) ;

void
mptcp_sopt_insert(struct mptses *mpte, struct mptopt *mpo)
{
 mpte_lock_assert_held(mpte);
 mpo->mpo_flags |= MPOF_ATTACHED;
 TAILQ_INSERT_TAIL(&mpte->mpte_sopts, mpo, mpo_entry);
}
