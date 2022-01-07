
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_level; scalar_t__ sopt_dir; int sopt_name; } ;
struct mptses {int dummy; } ;


 int ENOPROTOOPT ;
 scalar_t__ IPPROTO_TCP ;



 scalar_t__ SOPT_GET ;
 int VERIFY (int) ;
 int mptcp_subflow_keeptime ;
 int mpte_lock_assert_held (struct mptses*) ;
 int tcp_max_persist_timeout ;

__attribute__((used)) static int
mptcp_default_tcp_optval(struct mptses *mpte, struct sockopt *sopt, int *optval)
{
 int error = 0;

 VERIFY(sopt->sopt_level == IPPROTO_TCP);
 VERIFY(sopt->sopt_dir == SOPT_GET);
 mpte_lock_assert_held(mpte);


 switch (sopt->sopt_name) {
 case 131:
 case 128:
 case 132:
 case 133:
 case 135:
 case 129:
 case 130:
 case 137:
 case 136:
 case 139:
 case 140:
  *optval = 0;
  break;

 case 134:
  *optval = mptcp_subflow_keeptime;
  break;

 case 138:
  *optval = tcp_max_persist_timeout;
  break;

 default:
  error = ENOPROTOOPT;
  break;
 }
 return (error);
}
