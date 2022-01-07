
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_level; scalar_t__ sopt_name; int sopt_dir; } ;
struct socket {int dummy; } ;
typedef int optval ;


 int EINVAL ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_IPV6 ;

 scalar_t__ SOL_SOCKET ;



 int icmp6_ctloutput (struct socket*,struct sockopt*) ;
 int inp_flush (int ,int) ;
 int ip6_ctloutput (struct socket*,struct sockopt*) ;
 int ip6_raw_ctloutput (struct socket*,struct sockopt*) ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;
 int sotoinpcb (struct socket*) ;

int
rip6_ctloutput(
 struct socket *so,
 struct sockopt *sopt)
{
 int error, optval;


 if (sopt->sopt_level == IPPROTO_ICMPV6)




  return(icmp6_ctloutput(so, sopt));
 else if (sopt->sopt_level != IPPROTO_IPV6 &&
     !(sopt->sopt_level == SOL_SOCKET && sopt->sopt_name == 128))
  return (EINVAL);

 error = 0;

 switch (sopt->sopt_dir) {
 case 130:
  switch (sopt->sopt_name) {
  case 131:
   error = ip6_raw_ctloutput(so, sopt);
   break;
  default:
   error = ip6_ctloutput(so, sopt);
   break;
  }
  break;

 case 129:
  switch (sopt->sopt_name) {
  case 131:
   error = ip6_raw_ctloutput(so, sopt);
   break;

  case 128:
   if ((error = sooptcopyin(sopt, &optval, sizeof (optval),
       sizeof (optval))) != 0)
    break;

   error = inp_flush(sotoinpcb(so), optval);
   break;

  default:
   error = ip6_ctloutput(so, sopt);
   break;
  }
  break;
 }

 return (error);
}
