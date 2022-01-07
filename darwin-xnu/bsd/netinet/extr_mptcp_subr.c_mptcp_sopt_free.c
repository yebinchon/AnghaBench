
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptopt {int mpo_flags; } ;


 int MPOF_ATTACHED ;
 int VERIFY (int) ;
 int mptopt_zone ;
 int zfree (int ,struct mptopt*) ;

void
mptcp_sopt_free(struct mptopt *mpo)
{
 VERIFY(!(mpo->mpo_flags & MPOF_ATTACHED));

 zfree(mptopt_zone, mpo);
}
