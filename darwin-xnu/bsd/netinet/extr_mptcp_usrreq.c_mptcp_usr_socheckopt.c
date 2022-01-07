
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_level; int sopt_name; int sopt_valsize; } ;
struct socket {int dummy; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 scalar_t__ SOL_SOCKET ;
 int VERIFY (int) ;

__attribute__((used)) static int
mptcp_usr_socheckopt(struct socket *mp_so, struct sockopt *sopt)
{
#pragma unused(mp_so)
 int error = 0;

 VERIFY(sopt->sopt_level == SOL_SOCKET);
 switch (sopt->sopt_name) {
 case 155:
 case 154:
 case 129:
 case 145:
 case 144:
 case 160:
 case 134:
 case 140:
 case 133:
 case 139:
 case 132:
 case 138:
 case 150:
 case 147:
 case 149:
 case 156:
 case 143:
 case 163:
 case 158:
 case 130:
 case 162:
 case 161:







  break;

 case 164:
 case 157:
 case 128:
 case 141:
 case 131:
 case 136:
 case 142:
 case 137:
 case 135:
 case 159:
 case 146:
 case 148:
 case 153:






  if (sopt->sopt_valsize != sizeof (int))
   error = EINVAL;
  break;

 default:



  error = ENOPROTOOPT;
  break;
 }

 return (error);
}
