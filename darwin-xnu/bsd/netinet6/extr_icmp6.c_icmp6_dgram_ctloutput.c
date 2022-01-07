
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_level; int sopt_name; } ;
struct socket {int so_cred; } ;


 int EINVAL ;
 int EPERM ;

 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_IPV6 ;
 int icmp6_ctloutput (struct socket*,struct sockopt*) ;
 int ip6_ctloutput (struct socket*,struct sockopt*) ;
 scalar_t__ kauth_cred_issuser (int ) ;

int
icmp6_dgram_ctloutput(struct socket *so, struct sockopt *sopt)
{
 if (kauth_cred_issuser(so->so_cred))
  return icmp6_ctloutput(so, sopt);

 if (sopt->sopt_level == IPPROTO_ICMPV6) {
  switch (sopt->sopt_name) {
   case 157:
    return icmp6_ctloutput(so, sopt);
   default:
    return EPERM;
  }
 }

 if (sopt->sopt_level != IPPROTO_IPV6)
  return EINVAL;

 switch (sopt->sopt_name) {
  case 130:
  case 149:
  case 128:
  case 129:
  case 133:
  case 134:
  case 135:
  case 138:
  case 137:
  case 147:
  case 146:
  case 148:
  case 141:
  case 142:
  case 140:
  case 144:
  case 143:
  case 136:
  case 145:
  case 132:
  case 131:
  case 152:
  case 153:
  case 155:
  case 154:
  case 156:
  case 151:
  case 150:
  case 139:

   return ip6_ctloutput(so, sopt);

  default:
   return EPERM;
 }
}
