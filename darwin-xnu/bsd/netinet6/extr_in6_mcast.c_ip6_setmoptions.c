
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct ip6_moptions {int im6o_multicast_hlim; int im6o_multicast_loop; } ;
struct inpcb {int inp_socket; } ;
typedef int hlim ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IM6O_LOCK (struct ip6_moptions*) ;
 int IM6O_REMREF (struct ip6_moptions*) ;
 int IM6O_UNLOCK (struct ip6_moptions*) ;
 scalar_t__ IPPROTO_DIVERT ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_PROTO (int ) ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_TYPE (int ) ;
 int in6p_block_unblock_source (struct inpcb*,struct sockopt*) ;
 struct ip6_moptions* in6p_findmoptions (struct inpcb*) ;
 int in6p_join_group (struct inpcb*,struct sockopt*) ;
 int in6p_leave_group (struct inpcb*,struct sockopt*) ;
 int in6p_set_multicast_if (struct inpcb*,struct sockopt*) ;
 int in6p_set_source_filters (struct inpcb*,struct sockopt*) ;
 int ip6_defmcasthlim ;
 int sooptcopyin (struct sockopt*,int*,int,int) ;

int
ip6_setmoptions(struct inpcb *inp, struct sockopt *sopt)
{
 struct ip6_moptions *im6o;
 int error;

 error = 0;





 if (SOCK_PROTO(inp->inp_socket) == IPPROTO_DIVERT ||
     (SOCK_TYPE(inp->inp_socket) != SOCK_RAW &&
      SOCK_TYPE(inp->inp_socket) != SOCK_DGRAM))
  return (EOPNOTSUPP);

 switch (sopt->sopt_name) {
 case 135:
  error = in6p_set_multicast_if(inp, sopt);
  break;

 case 136: {
  int hlim;

  if (sopt->sopt_valsize != sizeof(int)) {
   error = EINVAL;
   break;
  }
  error = sooptcopyin(sopt, &hlim, sizeof(hlim), sizeof(int));
  if (error)
   break;
  if (hlim < -1 || hlim > 255) {
   error = EINVAL;
   break;
  } else if (hlim == -1) {
   hlim = ip6_defmcasthlim;
  }
  im6o = in6p_findmoptions(inp);
  if (im6o == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  IM6O_LOCK(im6o);
  im6o->im6o_multicast_hlim = hlim;
  IM6O_UNLOCK(im6o);
  IM6O_REMREF(im6o);
  break;
 }

 case 134: {
  u_int loop;





  if (sopt->sopt_valsize != sizeof(u_int)) {
   error = EINVAL;
   break;
  }
  error = sooptcopyin(sopt, &loop, sizeof(u_int), sizeof(u_int));
  if (error)
   break;
  if (loop > 1) {
   error = EINVAL;
   break;
  }
  im6o = in6p_findmoptions(inp);
  if (im6o == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  IM6O_LOCK(im6o);
  im6o->im6o_multicast_loop = loop;
  IM6O_UNLOCK(im6o);
  IM6O_REMREF(im6o);
  break;
 }

 case 139:
 case 132:
 case 131:
  error = in6p_join_group(inp, sopt);
  break;

 case 138:
 case 130:
 case 129:
  error = in6p_leave_group(inp, sopt);
  break;

 case 133:
 case 128:
  error = in6p_block_unblock_source(inp, sopt);
  break;

 case 137:
  error = in6p_set_source_filters(inp, sopt);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
