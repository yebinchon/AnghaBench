
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {scalar_t__ sopt_level; scalar_t__ sopt_name; int sopt_dir; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
typedef int optval ;


 int DUMMYNET_LOADED ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int INP_HDRINCL ;
 int INP_STRIPHDR ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ SOL_SOCKET ;



 int inp_flush (struct inpcb*,int) ;
 int ip_ctloutput (struct socket*,struct sockopt*) ;
 int ip_dn_ctl_ptr (struct sockopt*) ;
 int ip_dn_init () ;
 int ip_fw_ctl_ptr (struct sockopt*) ;
 int load_ipfw () ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;
 int sooptcopyout (struct sockopt*,int*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
rip_ctloutput(struct socket *so, struct sockopt *sopt)
{
 struct inpcb *inp = sotoinpcb(so);
 int error, optval;


 if (sopt->sopt_level != IPPROTO_IP &&
     !(sopt->sopt_level == SOL_SOCKET && sopt->sopt_name == 128))
  return (EINVAL);

 error = 0;

 switch (sopt->sopt_dir) {
 case 130:
  switch (sopt->sopt_name) {
  case 138:
   optval = inp->inp_flags & INP_HDRINCL;
   error = sooptcopyout(sopt, &optval, sizeof optval);
   break;

  case 131:
   optval = inp->inp_flags & INP_STRIPHDR;
   error = sooptcopyout(sopt, &optval, sizeof optval);
   break;
  default:
   error = ip_ctloutput(so, sopt);
   break;
  }
  break;

 case 129:
  switch (sopt->sopt_name) {
  case 138:
   error = sooptcopyin(sopt, &optval, sizeof optval,
         sizeof optval);
   if (error)
    break;
   if (optval)
    inp->inp_flags |= INP_HDRINCL;
   else
    inp->inp_flags &= ~INP_HDRINCL;
   break;

  case 131:
   error = sooptcopyin(sopt, &optval, sizeof optval,
       sizeof optval);
   if (error)
    break;
   if (optval)
    inp->inp_flags |= INP_STRIPHDR;
   else
    inp->inp_flags &= ~INP_STRIPHDR;
   break;
  case 128:
   if ((error = sooptcopyin(sopt, &optval, sizeof (optval),
       sizeof (optval))) != 0)
    break;

   error = inp_flush(inp, optval);
   break;

  default:
   error = ip_ctloutput(so, sopt);
   break;
  }
  break;
 }

 return (error);
}
