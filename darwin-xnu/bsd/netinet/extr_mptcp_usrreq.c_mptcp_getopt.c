
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {scalar_t__ sopt_level; int sopt_name; } ;
struct mptses {int mpte_svctype; int mpte_alternate_port; } ;
struct mptopt {int mpo_intval; } ;
struct TYPE_2__ {int so_flags; } ;


 int ENOPROTOOPT ;
 scalar_t__ IPPROTO_TCP ;



 int SOF_NOTSENT_LOWAT ;
 int mptcp_default_tcp_optval (struct mptses*,struct sockopt*,int*) ;
 int mptcp_get_notsent_lowat (struct mptses*) ;
 struct mptopt* mptcp_sopt_find (struct mptses*,struct sockopt*) ;
 TYPE_1__* mptetoso (struct mptses*) ;
 int sooptcopyout (struct sockopt*,int*,int) ;

__attribute__((used)) static int
mptcp_getopt(struct mptses *mpte, struct sockopt *sopt)
{
 int error = 0, optval = 0;






 if (sopt->sopt_level != IPPROTO_TCP) {
  error = ENOPROTOOPT;
  goto out;
 }

 switch (sopt->sopt_name) {
 case 131:
 case 128:
 case 134:
 case 132:
 case 133:
 case 135:
 case 129:
 case 138:
 case 137:
 case 136:
 case 130:
 case 139:
 case 140:

  error = mptcp_default_tcp_optval(mpte, sopt, &optval);
  break;
 default:

  error = ENOPROTOOPT;
  break;
 }

 switch (sopt->sopt_name) {
 case 130:
  if (mptetoso(mpte)->so_flags & SOF_NOTSENT_LOWAT)
   optval = mptcp_get_notsent_lowat(mpte);
  else
   optval = 0;
  goto out;
 case 139:
  optval = mpte->mpte_svctype;
  goto out;
 case 140:
  optval = mpte->mpte_alternate_port;
  goto out;
 }
 if (error == 0) {
  struct mptopt *mpo;

  if ((mpo = mptcp_sopt_find(mpte, sopt)) != ((void*)0))
   optval = mpo->mpo_intval;

  error = sooptcopyout(sopt, &optval, sizeof (int));
 }
out:
 return (error);
}
