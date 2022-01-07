
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sockopt {int sopt_name; } ;
struct ip6_moptions {int im6o_multicast_loop; int im6o_multicast_hlim; TYPE_1__* im6o_multicast_ifp; } ;
struct inpcb {int inp_socket; struct ip6_moptions* in6p_moptions; } ;
struct TYPE_2__ {int if_index; } ;


 int EADDRNOTAVAIL ;
 int ENOPROTOOPT ;
 int EOPNOTSUPP ;
 int IM6O_LOCK (struct ip6_moptions*) ;
 int IM6O_UNLOCK (struct ip6_moptions*) ;
 scalar_t__ IPPROTO_DIVERT ;




 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_PROTO (int ) ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_TYPE (int ) ;
 int in6_mcast_loop ;
 int in6p_get_source_filters (struct inpcb*,struct sockopt*) ;
 int ip6_defmcasthlim ;
 int sooptcopyout (struct sockopt*,int *,int) ;

int
ip6_getmoptions(struct inpcb *inp, struct sockopt *sopt)
{
 struct ip6_moptions *im6o;
 int error;
 u_int optval;

 im6o = inp->in6p_moptions;




 if (SOCK_PROTO(inp->inp_socket) == IPPROTO_DIVERT ||
     (SOCK_TYPE(inp->inp_socket) != SOCK_RAW &&
     SOCK_TYPE(inp->inp_socket) != SOCK_DGRAM)) {
  return (EOPNOTSUPP);
 }

 error = 0;
 switch (sopt->sopt_name) {
 case 129:
  if (im6o != ((void*)0))
   IM6O_LOCK(im6o);
  if (im6o == ((void*)0) || im6o->im6o_multicast_ifp == ((void*)0)) {
   optval = 0;
  } else {
   optval = im6o->im6o_multicast_ifp->if_index;
  }
  if (im6o != ((void*)0))
   IM6O_UNLOCK(im6o);
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 130:
  if (im6o == ((void*)0)) {
   optval = ip6_defmcasthlim;
  } else {
   IM6O_LOCK(im6o);
   optval = im6o->im6o_multicast_hlim;
   IM6O_UNLOCK(im6o);
  }
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 128:
  if (im6o == ((void*)0)) {
   optval = in6_mcast_loop;
  } else {
   IM6O_LOCK(im6o);
   optval = im6o->im6o_multicast_loop;
   IM6O_UNLOCK(im6o);
  }
  error = sooptcopyout(sopt, &optval, sizeof(u_int));
  break;

 case 131:
  if (im6o == ((void*)0)) {
   error = EADDRNOTAVAIL;
  } else {
   error = in6p_get_source_filters(inp, sopt);
  }
  break;

 default:
  error = ENOPROTOOPT;
  break;
 }

 return (error);
}
