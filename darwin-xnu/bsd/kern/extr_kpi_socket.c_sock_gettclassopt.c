
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockopt {size_t sopt_valsize; int sopt_name; int sopt_level; int sopt_p; int sopt_val; int sopt_dir; } ;
typedef TYPE_2__* socket_t ;
typedef scalar_t__ errno_t ;
struct TYPE_9__ {TYPE_1__* so_proto; } ;
struct TYPE_8__ {int * pr_domain; } ;


 int CAST_USER_ADDR_T (void*) ;
 scalar_t__ EINVAL ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_TCLASS ;
 int IP_TOS ;


 int SOCK_DOM (TYPE_2__*) ;
 int SOPT_GET ;
 int kernproc ;
 int socket_lock (TYPE_2__*,int) ;
 int socket_unlock (TYPE_2__*,int) ;
 scalar_t__ sogetoptlock (TYPE_2__*,struct sockopt*,int ) ;

errno_t
sock_gettclassopt(socket_t sock, void *optval, size_t *optlen)
{
 errno_t error = 0;
 struct sockopt sopt;

 if (sock == ((void*)0) || optval == ((void*)0) || optlen == ((void*)0))
  return (EINVAL);

 sopt.sopt_dir = SOPT_GET;
 sopt.sopt_val = CAST_USER_ADDR_T(optval);
 sopt.sopt_valsize = *optlen;
 sopt.sopt_p = kernproc;

 socket_lock(sock, 1);
 if (sock->so_proto == ((void*)0) || sock->so_proto->pr_domain == ((void*)0)) {
  socket_unlock(sock, 1);
  return (EINVAL);
 }

 switch (SOCK_DOM(sock)) {
 case 129:
  sopt.sopt_level = IPPROTO_IP;
  sopt.sopt_name = IP_TOS;
  break;
 case 128:
  sopt.sopt_level = IPPROTO_IPV6;
  sopt.sopt_name = IPV6_TCLASS;
  break;
 default:
  socket_unlock(sock, 1);
  return (EINVAL);

 }
 error = sogetoptlock(sock, &sopt, 0);
 socket_unlock(sock, 1);
 if (error == 0)
  *optlen = sopt.sopt_valsize;
 return (error);
}
