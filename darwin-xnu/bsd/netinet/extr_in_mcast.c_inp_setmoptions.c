
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sockopt {int sopt_name; int sopt_valsize; } ;
struct TYPE_2__ {int s_addr; } ;
struct ip_moptions {int imo_multicast_ttl; int imo_multicast_loop; TYPE_1__ imo_multicast_addr; struct ifnet* imo_multicast_ifp; } ;
struct inpcb {int inp_socket; } ;
struct ifnet {int if_flags; } ;
typedef int ifindex ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int IFF_MULTICAST ;
 int IMO_LOCK (struct ip_moptions*) ;
 int IMO_REMREF (struct ip_moptions*) ;
 int IMO_UNLOCK (struct ip_moptions*) ;
 int INADDR_ANY ;
 scalar_t__ IPPROTO_DIVERT ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_PROTO (int ) ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_TYPE (int ) ;
 scalar_t__ if_index ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int inp_block_unblock_source (struct inpcb*,struct sockopt*) ;
 struct ip_moptions* inp_findmoptions (struct inpcb*) ;
 int inp_join_group (struct inpcb*,struct sockopt*) ;
 int inp_leave_group (struct inpcb*,struct sockopt*) ;
 int inp_set_multicast_if (struct inpcb*,struct sockopt*) ;
 int inp_set_source_filters (struct inpcb*,struct sockopt*) ;
 int sooptcopyin (struct sockopt*,...) ;

int
inp_setmoptions(struct inpcb *inp, struct sockopt *sopt)
{
 struct ip_moptions *imo;
 int error;
 unsigned int ifindex;
 struct ifnet *ifp;

 error = 0;





 if (SOCK_PROTO(inp->inp_socket) == IPPROTO_DIVERT ||
     (SOCK_TYPE(inp->inp_socket) != SOCK_RAW &&
      SOCK_TYPE(inp->inp_socket) != SOCK_DGRAM))
  return (EOPNOTSUPP);

 switch (sopt->sopt_name) {
 case 138:
  error = inp_set_multicast_if(inp, sopt);
  break;

 case 137:



  error = sooptcopyin(sopt, &ifindex, sizeof (ifindex),
      sizeof (ifindex));
  if (error)
   break;

  imo = inp_findmoptions(inp);
  if (imo == ((void*)0)) {
   error = ENOMEM;
   break;
  }





  if (ifindex == 0) {
   IMO_LOCK(imo);
   imo->imo_multicast_ifp = ((void*)0);
   IMO_UNLOCK(imo);
   IMO_REMREF(imo);
   break;
  }

  ifnet_head_lock_shared();

  if ((unsigned int)if_index < ifindex) {
   ifnet_head_done();
   IMO_REMREF(imo);
   error = ENXIO;
   break;
  }
  ifp = ifindex2ifnet[ifindex];
  ifnet_head_done();


  if (ifp == ((void*)0) || !(ifp->if_flags & IFF_MULTICAST)) {
   IMO_REMREF(imo);
   error = EADDRNOTAVAIL;
   break;
  }
  IMO_LOCK(imo);
  imo->imo_multicast_ifp = ifp;







  imo->imo_multicast_addr.s_addr = INADDR_ANY;
  IMO_UNLOCK(imo);
  IMO_REMREF(imo);
  break;

 case 135: {
  u_char ttl;







  if (sopt->sopt_valsize == sizeof(u_char)) {
   error = sooptcopyin(sopt, &ttl, sizeof(u_char),
       sizeof(u_char));
   if (error)
    break;
  } else {
   u_int ittl;

   error = sooptcopyin(sopt, &ittl, sizeof(u_int),
       sizeof(u_int));
   if (error)
    break;
   if (ittl > 255) {
    error = EINVAL;
    break;
   }
   ttl = (u_char)ittl;
  }
  imo = inp_findmoptions(inp);
  if (imo == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  IMO_LOCK(imo);
  imo->imo_multicast_ttl = ttl;
  IMO_UNLOCK(imo);
  IMO_REMREF(imo);
  break;
 }

 case 136: {
  u_char loop;







  if (sopt->sopt_valsize == sizeof(u_char)) {
   error = sooptcopyin(sopt, &loop, sizeof(u_char),
       sizeof(u_char));
   if (error)
    break;
  } else {
   u_int iloop;

   error = sooptcopyin(sopt, &iloop, sizeof(u_int),
         sizeof(u_int));
   if (error)
    break;
   loop = (u_char)iloop;
  }
  imo = inp_findmoptions(inp);
  if (imo == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  IMO_LOCK(imo);
  imo->imo_multicast_loop = !!loop;
  IMO_UNLOCK(imo);
  IMO_REMREF(imo);
  break;
 }

 case 144:
 case 143:
 case 132:
 case 131:
  error = inp_join_group(inp, sopt);
  break;

 case 141:
 case 140:
 case 130:
 case 129:
  error = inp_leave_group(inp, sopt);
  break;

 case 142:
 case 134:
 case 133:
 case 128:
  error = inp_block_unblock_source(inp, sopt);
  break;

 case 139:
  error = inp_set_source_filters(inp, sopt);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
