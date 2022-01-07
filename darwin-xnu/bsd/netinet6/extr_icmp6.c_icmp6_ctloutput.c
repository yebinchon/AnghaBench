
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int sopt_level; int sopt_dir; int sopt_name; int sopt_valsize; } ;
struct socket {int dummy; } ;
struct inpcb {int * in6p_icmp6filt; } ;
struct icmp6_filter {int dummy; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOPROTOOPT ;

 int ICMP6_FILTER_SETPASSALL (int *) ;
 int IPPROTO_ICMPV6 ;


 int min (int,int) ;
 int sooptcopyin (struct sockopt*,int *,int,int) ;
 int sooptcopyout (struct sockopt*,int *,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
icmp6_ctloutput(struct socket *so, struct sockopt *sopt)
{
 int error = 0;
 int optlen;
 struct inpcb *inp = sotoinpcb(so);
 int level, op, optname;

 if (sopt) {
  level = sopt->sopt_level;
  op = sopt->sopt_dir;
  optname = sopt->sopt_name;
  optlen = sopt->sopt_valsize;
 } else
  level = op = optname = optlen = 0;

 if (level != IPPROTO_ICMPV6) {
  return EINVAL;
 }

 switch (op) {
 case 128:
  switch (optname) {
  case 130:
      {
   struct icmp6_filter *p;

   if (optlen != 0 && optlen != sizeof(*p)) {
    error = EMSGSIZE;
    break;
   }
   if (inp->in6p_icmp6filt == ((void*)0)) {
    error = EINVAL;
    break;
   }

   if (optlen == 0) {




    ICMP6_FILTER_SETPASSALL(inp->in6p_icmp6filt);
   } else {
    error = sooptcopyin(sopt, inp->in6p_icmp6filt, optlen,
     optlen);
   }
   break;
      }

  default:
   error = ENOPROTOOPT;
   break;
  }
  break;

 case 129:
  switch (optname) {
  case 130:
      {
   if (inp->in6p_icmp6filt == ((void*)0)) {
    error = EINVAL;
    break;
   }
   error = sooptcopyout(sopt, inp->in6p_icmp6filt,
     min(sizeof(struct icmp6_filter), optlen));
   break;
      }

  default:
   error = ENOPROTOOPT;
   break;
  }
  break;
 }

 return(error);
}
